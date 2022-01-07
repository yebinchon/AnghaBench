
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {scalar_t__ reloading; int active; } ;


 int CMD_DEFER ;
 int CMD_SUCCESS ;
 int SWAY_DEBUG ;
 struct cmd_results* cmd_exec_always (int,char**) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_1__* config ;
 int free (char*) ;
 char* join_args (char**,int) ;
 int sway_log (int ,char*,char*) ;

struct cmd_results *cmd_exec(int argc, char **argv) {
 if (!config->active) return cmd_results_new(CMD_DEFER, ((void*)0));
 if (config->reloading) {
  char *args = join_args(argv, argc);
  sway_log(SWAY_DEBUG, "Ignoring 'exec %s' due to reload", args);
  free(args);
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 }
 return cmd_exec_always(argc, argv);
}
