
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_config {int click_method; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct input_config* input_config; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int LIBINPUT_CONFIG_CLICK_METHOD_BUTTON_AREAS ;
 int LIBINPUT_CONFIG_CLICK_METHOD_CLICKFINGER ;
 int LIBINPUT_CONFIG_CLICK_METHOD_NONE ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 scalar_t__ strcasecmp (char*,char*) ;

struct cmd_results *input_cmd_click_method(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "click_method", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 struct input_config *ic = config->handler_context.input_config;
 if (!ic) {
  return cmd_results_new(CMD_FAILURE, "No input device defined.");
 }

 if (strcasecmp(argv[0], "none") == 0) {
  ic->click_method = LIBINPUT_CONFIG_CLICK_METHOD_NONE;
 } else if (strcasecmp(argv[0], "button_areas") == 0) {
  ic->click_method = LIBINPUT_CONFIG_CLICK_METHOD_BUTTON_AREAS;
 } else if (strcasecmp(argv[0], "clickfinger") == 0) {
  ic->click_method = LIBINPUT_CONFIG_CLICK_METHOD_CLICKFINGER;
 } else {
  return cmd_results_new(CMD_INVALID,
   "Expected 'click_method <none|button_areas|clickfinger'>");
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
