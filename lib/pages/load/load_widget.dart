import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'load_model.dart';
export 'load_model.dart';

class LoadWidget extends StatefulWidget {
  const LoadWidget({Key? key}) : super(key: key);

  @override
  _LoadWidgetState createState() => _LoadWidgetState();
}

class _LoadWidgetState extends State<LoadWidget> with TickerProviderStateMixin {
  late LoadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'stackOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1000.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeOut,
          delay: 1200.ms,
          duration: 600.ms,
          begin: Offset(100.0, 0.0),
          end: Offset(-300.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1400.ms,
          duration: 600.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeOut,
          delay: 1200.ms,
          duration: 800.ms,
          begin: Offset(100.0, 0.0),
          end: Offset(-300.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1400.ms,
          duration: 500.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeOut,
          delay: 1200.ms,
          duration: 800.ms,
          begin: Offset(-100.0, 0.0),
          end: Offset(-100.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1400.ms,
          duration: 400.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeOut,
          delay: 1200.ms,
          duration: 800.ms,
          begin: Offset(75.0, 0.0),
          end: Offset(-70.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1400.ms,
          duration: 400.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
    'stackOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1000.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1400));

      context.pushNamed('HomePage');
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 200.0,
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Stack(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Icon(
                                  FFIcons.kcarModelSuv,
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  size: 125.0,
                                ).animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation1']!),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 0.0, 0.0),
                                  child: Icon(
                                    FFIcons.kcarModelSuv,
                                    color:
                                        FlutterFlowTheme.of(context).greenish,
                                    size: 125.0,
                                  ).animateOnPageLoad(animationsMap[
                                      'iconOnPageLoadAnimation2']!),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      150.0, 5.0, 0.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0x00FFFFFF),
                                          FlutterFlowTheme.of(context)
                                              .iconBorder,
                                          FlutterFlowTheme.of(context)
                                              .iconBorder,
                                          Color(0x00FFFFFF)
                                        ],
                                        stops: [0.0, 0.2, 0.2, 1.0],
                                        begin: AlignmentDirectional(-1.0, 0.0),
                                        end: AlignmentDirectional(1.0, 0),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation1']!),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      180.0, 12.0, 0.0, 0.0),
                                  child: Container(
                                    width: 250.0,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0x00FFFFFF),
                                          FlutterFlowTheme.of(context)
                                              .iconBorder,
                                          FlutterFlowTheme.of(context)
                                              .iconBorder,
                                          Color(0x00FFFFFF)
                                        ],
                                        stops: [0.0, 0.2, 0.2, 1.0],
                                        begin: AlignmentDirectional(-1.0, 0.0),
                                        end: AlignmentDirectional(1.0, 0),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation2']!),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['stackOnPageLoadAnimation1']!),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Stack(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.batteryQuarter,
                          color: FlutterFlowTheme.of(context).greenish,
                          size: 56.0,
                        ).animateOnPageLoad(
                            animationsMap['iconOnPageLoadAnimation3']!),
                        FaIcon(
                          FontAwesomeIcons.batteryHalf,
                          color: FlutterFlowTheme.of(context).greenish,
                          size: 56.0,
                        ).animateOnPageLoad(
                            animationsMap['iconOnPageLoadAnimation4']!),
                        FaIcon(
                          FontAwesomeIcons.batteryThreeQuarters,
                          color: FlutterFlowTheme.of(context).greenish,
                          size: 56.0,
                        ).animateOnPageLoad(
                            animationsMap['iconOnPageLoadAnimation5']!),
                        FaIcon(
                          FontAwesomeIcons.batteryFull,
                          color: FlutterFlowTheme.of(context).greenish,
                          size: 56.0,
                        ).animateOnPageLoad(
                            animationsMap['iconOnPageLoadAnimation6']!),
                        FaIcon(
                          FontAwesomeIcons.batteryEmpty,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 56.0,
                        ).animateOnPageLoad(
                            animationsMap['iconOnPageLoadAnimation7']!),
                        FaIcon(
                          FontAwesomeIcons.batteryEmpty,
                          color: FlutterFlowTheme.of(context).greenish,
                          size: 56.0,
                        ).animateOnPageLoad(
                            animationsMap['iconOnPageLoadAnimation8']!),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['stackOnPageLoadAnimation2']!),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
