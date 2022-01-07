
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_config {int scroll_method; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct input_config* input_config; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int LIBINPUT_CONFIG_SCROLL_2FG ;
 int LIBINPUT_CONFIG_SCROLL_EDGE ;
 int LIBINPUT_CONFIG_SCROLL_NO_SCROLL ;
 int LIBINPUT_CONFIG_SCROLL_ON_BUTTON_DOWN ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 scalar_t__ strcasecmp (char*,char*) ;

struct cmd_results *input_cmd_scroll_method(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "scroll_method", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 struct input_config *ic = config->handler_context.input_config;
 if (!ic) {
  return cmd_results_new(CMD_FAILURE, "No input device defined.");
 }

 if (strcasecmp(argv[0], "none") == 0) {
  ic->scroll_method = LIBINPUT_CONFIG_SCROLL_NO_SCROLL;
 } else if (strcasecmp(argv[0], "two_finger") == 0) {
  ic->scroll_method = LIBINPUT_CONFIG_SCROLL_2FG;
 } else if (strcasecmp(argv[0], "edge") == 0) {
  ic->scroll_method = LIBINPUT_CONFIG_SCROLL_EDGE;
 } else if (strcasecmp(argv[0], "on_button_down") == 0) {
  ic->scroll_method = LIBINPUT_CONFIG_SCROLL_ON_BUTTON_DOWN;
 } else {
  return cmd_results_new(CMD_INVALID,
   "Expected 'scroll_method <none|two_finger|edge|on_button_down>'");
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
