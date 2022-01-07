
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_6__ {int argc; char** argv; } ;
struct TYPE_7__ {TYPE_2__ leftovers; TYPE_1__* output_config; } ;
struct TYPE_8__ {TYPE_3__ handler_context; } ;
struct TYPE_5__ {scalar_t__ enabled; } ;


 int CMD_FAILURE ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_4__* config ;

struct cmd_results *output_cmd_disable(int argc, char **argv) {
 if (!config->handler_context.output_config) {
  return cmd_results_new(CMD_FAILURE, "Missing output config");
 }
 config->handler_context.output_config->enabled = 0;

 config->handler_context.leftovers.argc = argc;
 config->handler_context.leftovers.argv = argv;
 return ((void*)0);
}
