
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int auto_back_and_forth; } ;


 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_1__* config ;
 int parse_boolean (char*,int ) ;

struct cmd_results *cmd_ws_auto_back_and_forth(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "workspace_auto_back_and_forth", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 config->auto_back_and_forth =
  parse_boolean(argv[0], config->auto_back_and_forth);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
