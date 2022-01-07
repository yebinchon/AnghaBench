
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int swaybar_command; } ;


 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_2__* config ;
 int free (int ) ;
 int join_args (char**,int) ;
 int sway_log (int ,char*,int ) ;

struct cmd_results *bar_cmd_swaybar_command(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "swaybar_command", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 free(config->current_bar->swaybar_command);
 config->current_bar->swaybar_command = join_args(argv, argc);
 sway_log(SWAY_DEBUG, "Using custom swaybar command: %s",
   config->current_bar->swaybar_command);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
