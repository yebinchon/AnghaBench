
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct criteria {int cmdlist; int raw; int type; } ;
struct cmd_results {int dummy; } ;
struct TYPE_2__ {int criteria; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int CT_COMMAND ;
 int EXPECTED_AT_LEAST ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ criteria_already_exists (struct criteria*) ;
 int criteria_destroy (struct criteria*) ;
 struct criteria* criteria_parse (char*,char**) ;
 int free (char*) ;
 int join_args (char**,int) ;
 int list_add (int ,struct criteria*) ;
 int sway_log (int ,char*,int ,int ) ;

struct cmd_results *cmd_for_window(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "for_window", EXPECTED_AT_LEAST, 2))) {
  return error;
 }

 char *err_str = ((void*)0);
 struct criteria *criteria = criteria_parse(argv[0], &err_str);
 if (!criteria) {
  error = cmd_results_new(CMD_INVALID, err_str);
  free(err_str);
  return error;
 }

 criteria->type = CT_COMMAND;
 criteria->cmdlist = join_args(argv + 1, argc - 1);


 if (criteria_already_exists(criteria)) {
  sway_log(SWAY_DEBUG, "for_window already exists: '%s' -> '%s'",
    criteria->raw, criteria->cmdlist);
  criteria_destroy(criteria);
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 }

 list_add(config->criteria, criteria);
 sway_log(SWAY_DEBUG, "for_window: '%s' -> '%s' added", criteria->raw, criteria->cmdlist);

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
