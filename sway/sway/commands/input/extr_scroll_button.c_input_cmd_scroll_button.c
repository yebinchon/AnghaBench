
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct input_config {scalar_t__ scroll_button; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct input_config* input_config; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 scalar_t__ SWAY_SCROLL_DOWN ;
 scalar_t__ SWAY_SCROLL_LEFT ;
 scalar_t__ SWAY_SCROLL_RIGHT ;
 scalar_t__ SWAY_SCROLL_UP ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_2__* config ;
 int free (char*) ;
 scalar_t__ get_mouse_button (char*,char**) ;
 scalar_t__ strcmp (char*,char*) ;

struct cmd_results *input_cmd_scroll_button(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "scroll_button", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 struct input_config *ic = config->handler_context.input_config;
 if (!ic) {
  return cmd_results_new(CMD_FAILURE, "No input device defined.");
 }

 if (strcmp(*argv, "disable") == 0) {
  ic->scroll_button = 0;
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 }

 char *message = ((void*)0);
 uint32_t button = get_mouse_button(*argv, &message);
 if (message) {
  error = cmd_results_new(CMD_INVALID, message);
  free(message);
  return error;
 } else if (button == SWAY_SCROLL_UP || button == SWAY_SCROLL_DOWN
   || button == SWAY_SCROLL_LEFT || button == SWAY_SCROLL_RIGHT) {
  return cmd_results_new(CMD_INVALID,
    "X11 axis buttons are not supported for scroll_button");
 } else if (!button) {
  return cmd_results_new(CMD_INVALID, "Unknown button %s", *argv);
 }
 ic->scroll_button = button;

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
