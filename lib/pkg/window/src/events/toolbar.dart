import 'package:flutter/foundation.dart';
import '../entry.dart';
import 'base.dart';

/// Mixin to add shorthands for events generated by the [ToolbarWindowFeature] feature.
mixin ToolbarEvents on WindowEventHandler {
  @override
  void onEvent(WindowEvent event) {
    if (event is WindowCloseButtonPressEvent) {
      return onCloseButtonPress();
    } else if (event is WindowMaximizeButtonPressEvent) {
      return onMaximizeButtonPress();
    } else if (event is WindowMinimizeButtonPressEvent) {
      return onMinimizeButtonPress();
    }
    super.onEvent(event);
  }

  /// Handler for [WindowCloseButtonPressEvent] events.
  @protected
  void onCloseButtonPress() {}

  /// Handler for [WindowMaximizeButtonPressEvent] events.
  @protected
  void onMaximizeButtonPress() {}

  /// Handler for [WindowMinimizeButtonPressEvent] events.
  @protected
  void onMinimizeButtonPress() {}
}

/// Event generated when the user presses the 'close' button of the window toolbar.
class WindowCloseButtonPressEvent extends WindowEvent {
  const WindowCloseButtonPressEvent({required super.timestamp});
}

/// Event generated when the user presses the 'maximize' button of the window toolbar.
class WindowMaximizeButtonPressEvent extends WindowEvent {
  const WindowMaximizeButtonPressEvent({required super.timestamp});
}

/// Event generated when the user presses the 'minimize' button of the window toolbar.
class WindowMinimizeButtonPressEvent extends WindowEvent {
  const WindowMinimizeButtonPressEvent({required super.timestamp});
}