
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* checkarg (int,char*,int ,int ) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 int sway_terminate (int ) ;

struct cmd_results *cmd_exit(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "exit", EXPECTED_EQUAL_TO, 0))) {
  return error;
 }
 sway_terminate(0);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
