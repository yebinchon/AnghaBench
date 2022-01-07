
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct wlr_event_pointer_axis {int orientation; double delta; double delta_discrete; int source; int time_msec; int * device; } ;
struct sway_cursor {int dummy; } ;
struct cmd_results {int dummy; } ;
typedef enum wlr_button_state { ____Placeholder_wlr_button_state } wlr_button_state ;
typedef enum wlr_axis_orientation { ____Placeholder_wlr_axis_orientation } wlr_axis_orientation ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 scalar_t__ SWAY_SCROLL_DOWN ;
 scalar_t__ SWAY_SCROLL_LEFT ;
 scalar_t__ SWAY_SCROLL_RIGHT ;
 scalar_t__ SWAY_SCROLL_UP ;
 int WLR_AXIS_ORIENTATION_HORIZONTAL ;
 int WLR_AXIS_ORIENTATION_VERTICAL ;
 int WLR_AXIS_SOURCE_WHEEL ;
 int WLR_BUTTON_PRESSED ;
 int WLR_BUTTON_RELEASED ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 int dispatch_cursor_axis (struct sway_cursor*,struct wlr_event_pointer_axis*) ;
 int dispatch_cursor_button (struct sway_cursor*,int *,int ,scalar_t__,int) ;
 char* expected_syntax ;
 int free (char*) ;
 scalar_t__ get_mouse_button (char*,char**) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static struct cmd_results *press_or_release(struct sway_cursor *cursor,
  char *action, char *button_str) {
 enum wlr_button_state state;
 uint32_t button;
 if (strcasecmp(action, "press") == 0) {
  state = WLR_BUTTON_PRESSED;
 } else if (strcasecmp(action, "release") == 0) {
  state = WLR_BUTTON_RELEASED;
 } else {
  return cmd_results_new(CMD_INVALID, expected_syntax);
 }

 char *message = ((void*)0);
 button = get_mouse_button(button_str, &message);
 if (message) {
  struct cmd_results *error =
   cmd_results_new(CMD_INVALID, message);
  free(message);
  return error;
 } else if (button == SWAY_SCROLL_UP || button == SWAY_SCROLL_DOWN
   || button == SWAY_SCROLL_LEFT || button == SWAY_SCROLL_RIGHT) {

  enum wlr_axis_orientation orientation =
   (button == SWAY_SCROLL_UP || button == SWAY_SCROLL_DOWN)
   ? WLR_AXIS_ORIENTATION_VERTICAL
   : WLR_AXIS_ORIENTATION_HORIZONTAL;
  double delta = (button == SWAY_SCROLL_UP || button == SWAY_SCROLL_LEFT)
   ? -1 : 1;
  struct wlr_event_pointer_axis event = {
   .device = ((void*)0),
   .time_msec = 0,
   .source = WLR_AXIS_SOURCE_WHEEL,
   .orientation = orientation,
   .delta = delta * 15,
   .delta_discrete = delta
  };
  dispatch_cursor_axis(cursor, &event);
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 } else if (!button) {
  return cmd_results_new(CMD_INVALID, "Unknown button %s", button_str);
 }
 dispatch_cursor_button(cursor, ((void*)0), 0, button, state);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
