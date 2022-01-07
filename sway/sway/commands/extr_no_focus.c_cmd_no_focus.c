
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct criteria {int raw; int type; } ;
struct cmd_results {int dummy; } ;
struct TYPE_2__ {int criteria; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int CT_NO_FOCUS ;
 int EXPECTED_AT_LEAST ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ criteria_already_exists (struct criteria*) ;
 int criteria_destroy (struct criteria*) ;
 struct criteria* criteria_parse (char*,char**) ;
 int free (char*) ;
 int list_add (int ,struct criteria*) ;
 int sway_log (int ,char*,int ) ;

struct cmd_results *cmd_no_focus(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "no_focus", EXPECTED_AT_LEAST, 1))) {
  return error;
 }

 char *err_str = ((void*)0);
 struct criteria *criteria = criteria_parse(argv[0], &err_str);
 if (!criteria) {
  error = cmd_results_new(CMD_INVALID, err_str);
  free(err_str);
  return error;
 }


 criteria->type = CT_NO_FOCUS;


 if (criteria_already_exists(criteria)) {
  sway_log(SWAY_DEBUG, "no_focus already exists: '%s'", criteria->raw);
  criteria_destroy(criteria);
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 }

 list_add(config->criteria, criteria);

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
