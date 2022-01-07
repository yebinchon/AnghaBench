
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int default_layout; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int L_NONE ;
 int L_STACKED ;
 int L_TABBED ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ strcasecmp (char*,char*) ;

struct cmd_results *cmd_workspace_layout(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "workspace_layout", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 if (strcasecmp(argv[0], "default") == 0) {
  config->default_layout = L_NONE;
 } else if (strcasecmp(argv[0], "stacking") == 0) {
  config->default_layout = L_STACKED;
 } else if (strcasecmp(argv[0], "tabbed") == 0) {
  config->default_layout = L_TABBED;
 } else {
  return cmd_results_new(CMD_INVALID,
    "Expected 'workspace_layout <default|stacking|tabbed>'");
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
