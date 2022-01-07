
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {scalar_t__ focus_wrapping; } ;


 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 scalar_t__ WRAP_FORCE ;
 scalar_t__ WRAP_NO ;
 scalar_t__ WRAP_WORKSPACE ;
 scalar_t__ WRAP_YES ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_1__* config ;
 scalar_t__ parse_boolean (char*,int) ;
 scalar_t__ strcasecmp (char*,char*) ;

struct cmd_results *cmd_focus_wrapping(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "focus_wrapping", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }

 if (strcasecmp(argv[0], "force") == 0) {
  config->focus_wrapping = WRAP_FORCE;
 } else if (strcasecmp(argv[0], "workspace") == 0) {
  config->focus_wrapping = WRAP_WORKSPACE;
 } else if (parse_boolean(argv[0], config->focus_wrapping == WRAP_YES)) {
  config->focus_wrapping = WRAP_YES;
 } else {
  config->focus_wrapping = WRAP_NO;
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
