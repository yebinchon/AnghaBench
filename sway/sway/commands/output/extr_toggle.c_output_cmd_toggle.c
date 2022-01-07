
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_output {int dummy; } ;
struct output_config {scalar_t__ enabled; int name; } ;
struct cmd_results {int dummy; } ;
struct TYPE_4__ {int argc; char** argv; } ;
struct TYPE_5__ {TYPE_1__ leftovers; struct output_config* output_config; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 struct sway_output* all_output_by_name_or_id (int ) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_3__* config ;
 struct output_config* find_output_config (struct sway_output*) ;
 int free (struct output_config*) ;
 scalar_t__ strcmp (int ,char*) ;

struct cmd_results *output_cmd_toggle(int argc, char **argv) {
 if (!config->handler_context.output_config) {
  return cmd_results_new(CMD_FAILURE, "Missing output config");
 }

 struct output_config *oc = config->handler_context.output_config;

 if (strcmp(oc->name, "*") == 0) {
  return cmd_results_new(CMD_INVALID,
    "Cannot apply toggle to all outputs.");
 }

 struct sway_output *sway_output = all_output_by_name_or_id(oc->name);

 if (sway_output == ((void*)0)) {
  return cmd_results_new(CMD_FAILURE,
    "Cannot apply toggle to unknown output %s", oc->name);
 }

 oc = find_output_config(sway_output);

 if (!oc || oc->enabled != 0) {
  config->handler_context.output_config->enabled = 0;
 } else {
  config->handler_context.output_config->enabled = 1;
 }

 free(oc);
 config->handler_context.leftovers.argc = argc;
 config->handler_context.leftovers.argv = argv;
 return ((void*)0);
}
