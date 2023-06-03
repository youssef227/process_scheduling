import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:processs_scheduling/globale%20variables.dart';
import 'package:processs_scheduling/screen3.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  final List<TextEditingController> _arraivalTimeController = List.generate(
      int.parse(processCount), (index) => TextEditingController());
  final List<TextEditingController> _brustTimeController = List.generate(
      int.parse(processCount), (index) => TextEditingController());
  final List<TextEditingController> _priorityController = List.generate(
      int.parse(processCount), (index) => TextEditingController());
  final TextEditingController _timeQuantum = TextEditingController();

  // final TextEditingController _arraivalTimeController = TextEditingController();
  // final TextEditingController _brustTimeController = TextEditingController();
  // final TextEditingController _priorityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text('Input Text Page'),
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int i = 0; i < int.parse(processCount); i++)
                buildTextField(
                    _arraivalTimeController[i],
                    _brustTimeController[i],
                    _priorityController[i],
                    (i + 1).toString()),
              SizedBox(height: 16.0),
              TextField(
                controller: _timeQuantum,
                decoration: const InputDecoration(
                  labelText: "time quantum for Round Robin algorithm",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  int i = 0;
                  int j = 0;
                  int k = 0;
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => screen2()));
                  for (var controller in _arraivalTimeController) {
                    arrivalTime[i] = int.parse(controller.text);
                    i += 1;
                  }
                  for (var controller in _brustTimeController) {
                    burstTime[j] = int.parse(controller.text);
                    j+=1;
                  }
                  for (var controller in _priorityController) {
                    priority[k] = int.parse(controller.text);
                    k+=1;
                  }
                  print('Arrival Time: $arrivalTime');
                  print('Burst Time: $burstTime');
                  print('Priority: $priority');
                  timeQuantum = _timeQuantum.text;
                  print('Time Quantum: $timeQuantum');
                  print(priorityScheduling(arrivalTime.cast<int>(), burstTime.cast<int>(),priority.cast<int>()));
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>screen3()));
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildTextField(
    TextEditingController arraivalController,
    TextEditingController brustController,
    TextEditingController prioritycontroller,
    String labelText) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Text("P${labelText}"),
        TextField(
          controller: arraivalController,
          decoration: const InputDecoration(
            labelText: "Arraival time",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: brustController,
          decoration: const InputDecoration(
            labelText: "Brust time",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: prioritycontroller,
          decoration: const InputDecoration(
            labelText: "priority",
            border: OutlineInputBorder(),
          ),
        ),
      ],
    ),
  );
}
