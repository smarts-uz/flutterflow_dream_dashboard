import '/components/charge_graph/charge_graph_widget.dart';
import '/components/chart_column/chart_column_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flip_card/flip_card.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel1;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel2;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel3;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel4;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel5;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel6;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel7;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel8;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel9;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel10;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel11;
  // Model for chartColumn component.
  late ChartColumnModel chartColumnModel12;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for charge_graph component.
  late ChargeGraphModel chargeGraphModel1;
  // Model for charge_graph component.
  late ChargeGraphModel chargeGraphModel2;
  // State field(s) for Timer widget.
  int timerMilliseconds = 4000;
  String timerValue = StopWatchTimer.getDisplayTime(
    4000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  StopWatchTimer timerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    chartColumnModel1 = createModel(context, () => ChartColumnModel());
    chartColumnModel2 = createModel(context, () => ChartColumnModel());
    chartColumnModel3 = createModel(context, () => ChartColumnModel());
    chartColumnModel4 = createModel(context, () => ChartColumnModel());
    chartColumnModel5 = createModel(context, () => ChartColumnModel());
    chartColumnModel6 = createModel(context, () => ChartColumnModel());
    chartColumnModel7 = createModel(context, () => ChartColumnModel());
    chartColumnModel8 = createModel(context, () => ChartColumnModel());
    chartColumnModel9 = createModel(context, () => ChartColumnModel());
    chartColumnModel10 = createModel(context, () => ChartColumnModel());
    chartColumnModel11 = createModel(context, () => ChartColumnModel());
    chartColumnModel12 = createModel(context, () => ChartColumnModel());
    chargeGraphModel1 = createModel(context, () => ChargeGraphModel());
    chargeGraphModel2 = createModel(context, () => ChargeGraphModel());
  }

  void dispose() {
    chartColumnModel1.dispose();
    chartColumnModel2.dispose();
    chartColumnModel3.dispose();
    chartColumnModel4.dispose();
    chartColumnModel5.dispose();
    chartColumnModel6.dispose();
    chartColumnModel7.dispose();
    chartColumnModel8.dispose();
    chartColumnModel9.dispose();
    chartColumnModel10.dispose();
    chartColumnModel11.dispose();
    chartColumnModel12.dispose();
    chargeGraphModel1.dispose();
    chargeGraphModel2.dispose();
    timerController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
