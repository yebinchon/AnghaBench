
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {char* swaybg_command; } ;


 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_1__* config ;
 int free (char*) ;
 char* join_args (char**,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int sway_log (int ,char*,char*) ;

struct cmd_results *cmd_swaybg_command(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "swaybg_command", EXPECTED_AT_LEAST, 1))) {
  return error;
 }

 free(config->swaybg_command);
 config->swaybg_command = ((void*)0);

 char *new_command = join_args(argv, argc);
 if (strcmp(new_command, "-") != 0) {
  config->swaybg_command = new_command;
  sway_log(SWAY_DEBUG, "Using custom swaybg command: %s",
    config->swaybg_command);
 } else {
  free(new_command);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
