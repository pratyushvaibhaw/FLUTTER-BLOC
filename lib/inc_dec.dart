import 'package:bloc_sm/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDec extends StatefulWidget {
  const IncDec({super.key});

  @override
  State<IncDec> createState() => _IncDecState();
}

class _IncDecState extends State<IncDec> {
  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag:
                'btn1', //tagging prevents the exception :-Another exception was thrown: There are multiple heroes that share the same tag within a subtree.
            onPressed: () {
              debugPrint('hello');
              counterCubit.increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag:
                'btn2', //tagging prevents the exception :-Another exception was thrown: There are multiple heroes that share the same tag within a subtree.
            onPressed: () {
              debugPrint('hello');
              counterCubit.decrement();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.minimize_rounded),
          )
        ],
      ),
    );
  }
}
