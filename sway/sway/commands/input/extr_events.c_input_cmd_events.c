
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_config {int send_events; int identifier; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct input_config* input_config; } ;
struct TYPE_4__ {scalar_t__ reading; TYPE_1__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int INT_MIN ;
 int LIBINPUT_CONFIG_SEND_EVENTS_DISABLED ;
 int LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE ;
 int LIBINPUT_CONFIG_SEND_EVENTS_ENABLED ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_2__* config ;
 int mode_for_name (char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int toggle_send_events (struct input_config*,int,char**) ;
 int toggle_wildcard_send_events (int,char**) ;

struct cmd_results *input_cmd_events(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "events", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 struct input_config *ic = config->handler_context.input_config;
 if (!ic) {
  return cmd_results_new(CMD_FAILURE, "No input device defined.");
 }

 if (strcasecmp(argv[0], "enabled") == 0) {
  ic->send_events = LIBINPUT_CONFIG_SEND_EVENTS_ENABLED;
 } else if (strcasecmp(argv[0], "disabled") == 0) {
  ic->send_events = LIBINPUT_CONFIG_SEND_EVENTS_DISABLED;
 } else if (strcasecmp(argv[0], "disabled_on_external_mouse") == 0) {
  ic->send_events =
   LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE;
 } else if (config->reading) {
  return cmd_results_new(CMD_INVALID,
   "Expected 'events <enabled|disabled|disabled_on_external_mouse>'");
 } else if (strcasecmp(argv[0], "toggle") == 0) {
  for (int i = 1; i < argc; ++i) {
   if (mode_for_name(argv[i]) == -1) {
    return cmd_results_new(CMD_INVALID,
      "Invalid toggle mode %s", argv[i]);
   }
  }
  if (strcmp(ic->identifier, "*") == 0) {




   toggle_wildcard_send_events(argc - 1, argv + 1);
   ic->send_events = INT_MIN;
  } else {
   toggle_send_events(ic, argc - 1, argv + 1);
  }
 } else {
  return cmd_results_new(CMD_INVALID,
   "Expected 'events <enabled|disabled|disabled_on_external_mouse|"
   "toggle>'");
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
