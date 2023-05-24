import 'package:counter_with_provider/provider/provider_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        centerTitle: true,
      ),
      body: Center(

        child:
        Container(
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          context.read<CounterViewModel>().increment();
                        },
                        icon: const Icon(
                          Icons.plus_one,
                          color: Colors.white,
                        )),
                    Container(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        context.watch<CounterViewModel>().count.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          context.read<CounterViewModel>().decrement();
                        },
                        icon: const Icon(
                          Icons.exposure_minus_1,
                          color: Colors.white,
                        )
                    ),
                  ],
                ),
                IconButton(
                  onPressed: (){
                    context.read<CounterViewModel>().reset();
                  },
                  icon: const Icon(Icons.restart_alt, color: Colors.white,),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
