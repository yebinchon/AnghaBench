
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_config {float scroll_factor; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct input_config* input_config; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 scalar_t__ isnan (float) ;
 float parse_float (char*) ;

struct cmd_results *input_cmd_scroll_factor(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "scroll_factor", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 struct input_config *ic = config->handler_context.input_config;
 if (!ic) {
  return cmd_results_new(CMD_FAILURE, "No input device defined.");
 }

 float scroll_factor = parse_float(argv[0]);
 if (isnan(scroll_factor)) {
  return cmd_results_new(CMD_INVALID,
   "Invalid scroll factor; expected float.");
 } else if (scroll_factor < 0) {
  return cmd_results_new(CMD_INVALID,
   "Scroll factor cannot be negative.");
 }
 ic->scroll_factor = scroll_factor;

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
