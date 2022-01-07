
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_config {int drag_lock; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct input_config* input_config; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int LIBINPUT_CONFIG_DRAG_LOCK_DISABLED ;
 int LIBINPUT_CONFIG_DRAG_LOCK_ENABLED ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 scalar_t__ parse_boolean (char*,int) ;

struct cmd_results *input_cmd_drag_lock(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "drag_lock", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 struct input_config *ic = config->handler_context.input_config;
 if (!ic) {
  return cmd_results_new(CMD_FAILURE, "No input device defined.");
 }

 if (parse_boolean(argv[0], 1)) {
  ic->drag_lock = LIBINPUT_CONFIG_DRAG_LOCK_ENABLED;
 } else {
  ic->drag_lock = LIBINPUT_CONFIG_DRAG_LOCK_DISABLED;
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
