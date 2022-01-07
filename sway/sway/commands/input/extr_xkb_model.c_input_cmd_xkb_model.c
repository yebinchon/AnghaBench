
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_config {int xkb_model; int identifier; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct input_config* input_config; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 int strdup (char*) ;
 int sway_log (int ,char*,int ,int ) ;

struct cmd_results *input_cmd_xkb_model(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "xkb_model", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 struct input_config *ic = config->handler_context.input_config;
 if (!ic) {
  return cmd_results_new(CMD_FAILURE, "No input device defined.");
 }

 ic->xkb_model = strdup(argv[0]);

 sway_log(SWAY_DEBUG, "set-xkb_model for config: %s model: %s",
   ic->identifier, ic->xkb_model);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
