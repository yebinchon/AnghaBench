
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_variable {int value; int name; } ;
struct cmd_results {int dummy; } ;
struct TYPE_5__ {TYPE_1__* symbols; } ;
struct TYPE_4__ {int length; struct sway_variable** items; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 int compare_set_qsort ;
 TYPE_3__* config ;
 int free (int ) ;
 int join_args (char**,int) ;
 int list_add (TYPE_1__*,struct sway_variable*) ;
 int list_qsort (TYPE_1__*,int ) ;
 struct sway_variable* malloc (int) ;
 scalar_t__ strcmp (int ,char*) ;
 int strdup (char*) ;

struct cmd_results *cmd_set(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "set", EXPECTED_AT_LEAST, 2))) {
  return error;
 }

 if (argv[0][0] != '$') {
  return cmd_results_new(CMD_INVALID, "variable '%s' must start with $", argv[0]);
 }

 struct sway_variable *var = ((void*)0);

 int i;
 for (i = 0; i < config->symbols->length; ++i) {
  var = config->symbols->items[i];
  if (strcmp(var->name, argv[0]) == 0) {
   break;
  }
  var = ((void*)0);
 }
 if (var) {
  free(var->value);
 } else {
  var = malloc(sizeof(struct sway_variable));
  if (!var) {
   return cmd_results_new(CMD_FAILURE, "Unable to allocate variable");
  }
  var->name = strdup(argv[0]);
  list_add(config->symbols, var);
  list_qsort(config->symbols, compare_set_qsort);
 }
 var->value = join_args(argv + 1, argc - 1);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
