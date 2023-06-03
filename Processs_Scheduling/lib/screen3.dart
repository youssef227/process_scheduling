import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:processs_scheduling/globale%20variables.dart';

class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text('Input Text Page'),
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Column(
                children:  [
                const Text("Priority Scheduling:",style: TextStyle(fontWeight: FontWeight.bold,)),
                  Text(priorityScheduling(arrivalTime.cast<int>(),
                      burstTime.cast<int>(), priority.cast<int>())),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Column(
                children: [
                  const Text("First Come First Served:",style: TextStyle(fontWeight: FontWeight.bold,)),
                  Text(FCFS(arrivalTime.cast<int>(), burstTime.cast<int>(),
                      int.parse(processCount))),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    const Text("Shortest Job First:",style: TextStyle(fontWeight: FontWeight.bold,)),
                    Text(SJF(arrivalTime.cast<int>(), burstTime.cast<int>())),
                  ],
                )),
            SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Column(
                children: [
                  const Text("Round Robin:",style: TextStyle(fontWeight: FontWeight.bold,)),
                  Text(RR(arrivalTime.cast<int>(), burstTime.cast<int>(),
                      int.parse(processCount),int.parse(timeQuantum))),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
// String priorityScheduling_algorithm = priorityScheduling(arrivalTime, burstTime,priority);
// print(priorityScheduling_algorithm);
// String FCFS_algorithm = FCFS(arrivalTime, burstTime, n);
// print(FCFS_algorithm);
// String SJF_algorithm = SJF(arrivalTime, burstTime);
// print(SJF_algorithm);
// String RR_algorithm = RR(arrivalTime, burstTime, n, timeQuantum);
// print(RR_algorithm);
