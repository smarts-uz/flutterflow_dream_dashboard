import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chart_column_model.dart';
export 'chart_column_model.dart';

class ChartColumnWidget extends StatefulWidget {
  const ChartColumnWidget({
    Key? key,
    this.text,
    this.number,
    this.isActiveColumn,
  }) : super(key: key);

  final String? text;
  final int? number;
  final bool? isActiveColumn;

  @override
  _ChartColumnWidgetState createState() => _ChartColumnWidgetState();
}

class _ChartColumnWidgetState extends State<ChartColumnWidget>
    with TickerProviderStateMixin {
  late ChartColumnModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      loop: true,
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 1500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartColumnModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 90.0,
      height: 240.0,
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          if (widget.isActiveColumn ?? true)
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Container(
                width: 90.0,
                height: 220.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15.0,
                      color: Color(0x25000000),
                      offset: Offset(0.0, 8.0),
                    )
                  ],
                  gradient: LinearGradient(
                    colors: [
                      Color(0x12068DE2),
                      Color(0x00068DE2),
                      Color(0x00068DE2),
                      Color(0x12068DE2)
                    ],
                    stops: [0.0, 0.2, 0.8, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).iconBorder,
                  ),
                ),
              ),
            ),
          Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Container(
              width: 90.0,
              height: 220.0,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectionArea(
                              child: Text(
                            formatNumber(
                              widget.number,
                              formatType: FormatType.percent,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).customColor1,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w300,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          )),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).iconBorder,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 14,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDA0CF6),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x3FDA0CF6),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation']!),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 13,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFBF0CF6),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x40BF0CF6),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 12,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFB70CF6),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x41B70CF6),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 11,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFB70CF6),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x40B70CF6),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 10,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFB70CF6),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x3EB70CF6),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 9,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF752DE4),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x42752DE4),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 50.0,
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 8,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF752DE4),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x41752DE4),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 7,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF752DE4),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x3F752DE4),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 6,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF752DE4),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x40752DE4),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 5,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF5B4EF0),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x415B4EF0),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 4,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2C68E8),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x3F2C68E8),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 3,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2C68E8),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x412C68E8),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 2,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2C68E8),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x402C68E8),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 1,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF068DE2),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x3F068DE2),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 2.0),
                              child: Container(
                                height: 4.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: widget.number! > 0,
                                  child: Container(
                                    width: 50.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF0097F5),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x400097F5),
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: ClipRRect(
                        child: Container(
                          width: double.infinity,
                          height: 30.0,
                          decoration: BoxDecoration(),
                          alignment: AlignmentDirectional(0.00, -1.00),
                          child: Container(
                            height: double.infinity,
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                        ),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        if (widget.isActiveColumn ?? true)
                                          Container(
                                            width: 4.0,
                                            height: 4.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        Container(
                                          width: 4.0,
                                          height: 4.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .customColor1,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                if (widget.isActiveColumn ?? true)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 30.0,
                                      decoration: BoxDecoration(),
                                      child: ClipRect(
                                        child: ImageFiltered(
                                          imageFilter: ImageFilter.blur(
                                            sigmaX: 11.0,
                                            sigmaY: 7.0,
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, -2.50),
                                                  child: Container(
                                                    width: 17.0,
                                                    height: 17.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              if (!widget.isActiveColumn!)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 0.0),
                                  child: Text(
                                    widget.text!,
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .customColor2,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              if (widget.isActiveColumn ?? true)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 0.0),
                                  child: Text(
                                    widget.text!,
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w900,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
