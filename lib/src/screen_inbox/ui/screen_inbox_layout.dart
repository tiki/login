/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:login/src/flow/flow_service.dart';
import 'package:login/src/flow/model/flow_model_state.dart';
import 'package:login/src/modal_recover/modal_recover_service.dart';
import 'package:login/src/modal_recover/model/modal_recover_model_state.dart';
import 'package:provider/provider.dart';

import 'screen_inbox_background.dart';
import 'screen_inbox_foreground.dart';

class ScreenInboxLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlowService service = Provider.of<FlowService>(context);
    if (service.model.state == FlowModelState.otpVerified) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        service.changeState(FlowModelState.setupKeys);
        ModalRecoverService(
                ModalRecoverModelState(
                    email: service.model.current?.email,
                    accessToken: service.model.token?.bearer),
                service.style.recover,
                refresh: service.refresh,
                httpp: service.httpp)
            .presenter
            .show(context);
      });
    }
    return Scaffold(
        body: Center(
            child: Stack(children: [
      ScreenInboxBackground(),
      ScreenInboxForeground(),
    ])));
  }
}