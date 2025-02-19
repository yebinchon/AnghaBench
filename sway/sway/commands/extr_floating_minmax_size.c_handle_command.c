
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static struct cmd_results *handle_command(int argc, char **argv, char *cmd_name,
  const char *usage, int *config_width, int *config_height) {
 struct cmd_results *error;
 if ((error = checkarg(argc, cmd_name, EXPECTED_EQUAL_TO, 3))) {
  return error;
 }

 char *err;
 int width = (int)strtol(argv[0], &err, 10);
 if (*err) {
  return cmd_results_new(CMD_INVALID, cmd_name, usage);
 }

 if (strcmp(argv[1], "x") != 0) {
  return cmd_results_new(CMD_INVALID, cmd_name, usage);
 }

 int height = (int)strtol(argv[2], &err, 10);
 if (*err) {
  return cmd_results_new(CMD_INVALID, cmd_name, usage);
 }

 *config_width = width;
 *config_height = height;

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
