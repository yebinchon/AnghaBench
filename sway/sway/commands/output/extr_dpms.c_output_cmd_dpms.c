
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_5__ {int argc; char** argv; } ;
struct TYPE_7__ {TYPE_1__ leftovers; TYPE_2__* output_config; } ;
struct TYPE_8__ {TYPE_3__ handler_context; } ;
struct TYPE_6__ {int dpms_state; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int DPMS_OFF ;
 int DPMS_ON ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_4__* config ;
 scalar_t__ parse_boolean (char*,int) ;

struct cmd_results *output_cmd_dpms(int argc, char **argv) {
 if (!config->handler_context.output_config) {
  return cmd_results_new(CMD_FAILURE, "Missing output config");
 }
 if (!argc) {
  return cmd_results_new(CMD_INVALID, "Missing dpms argument.");
 }

 if (parse_boolean(argv[0], 1)) {
  config->handler_context.output_config->dpms_state = DPMS_ON;
 } else {
  config->handler_context.output_config->dpms_state = DPMS_OFF;
 }

 config->handler_context.leftovers.argc = argc - 1;
 config->handler_context.leftovers.argv = argv + 1;
 return ((void*)0);
}
