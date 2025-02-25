import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_fatoorah/my_fatoorah.dart';

void main() {
  runApp(const MaterialApp(home: Example()));
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('my_fatoorah Demo')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            color: Colors.blue,
            onPressed: () async {
              var response = await MyFatoorah.startPayment(
                context: context,
                successChild: const Icon(Icons.abc),
                // afterPaymentBehaviour:
                //     AfterPaymentBehaviour.BeforeCallbackExecution,
                request: MyfatoorahRequest.test(
                  currencyIso: Country.SaudiArabia,
                  successUrl: 'https://img.icons8.com/flat-round/50/checkmark.png',
                  errorUrl: 'https://img.icons8.com/color/48/cancel--v1.png',
                  invoiceAmount: 100,
                  language: ApiLanguage.English,
                  token:
                      'rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL',
                ),
              );
              log(response.paymentId.toString());
            },
            splashColor: Colors.blueGrey,
            child: const Text(
              'Show Payment',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
