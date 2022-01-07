
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {char* status_command; } ;


 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_2__* config ;
 int free (char*) ;
 char* join_args (char**,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int sway_log (int ,char*,char*) ;

struct cmd_results *bar_cmd_status_command(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "status_command", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 free(config->current_bar->status_command);
 config->current_bar->status_command = ((void*)0);

 char *new_command = join_args(argv, argc);
 if (strcmp(new_command, "-") != 0) {
  config->current_bar->status_command = new_command;
  sway_log(SWAY_DEBUG, "Feeding bar with status command: %s",
    config->current_bar->status_command);
 } else {
  free(new_command);
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
