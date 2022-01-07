
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct bar_config {char* id; } ;
struct TYPE_4__ {struct bar_config* current_bar; TYPE_1__* bars; } ;
struct TYPE_3__ {int length; struct bar_config** items; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_2__* config ;
 int free (char*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* strdup (char const*) ;
 int sway_log (int ,char*,char const*,char const*) ;

struct cmd_results *bar_cmd_id(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "id", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }

 const char *name = argv[0];
 const char *oldname = config->current_bar->id;
 if (strcmp(name, oldname) == 0) {
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 } else if (strcmp(name, "id") == 0) {
  return cmd_results_new(CMD_INVALID, "id cannot be 'id'");
 }

 for (int i = 0; i < config->bars->length; ++i) {
  struct bar_config *find = config->bars->items[i];
  if (strcmp(name, find->id) == 0 && config->current_bar != find) {
   return cmd_results_new(CMD_FAILURE,
     "Id '%s' already defined for another bar. Id unchanged (%s).",
     name, oldname);
  }
 }

 sway_log(SWAY_DEBUG, "Renaming bar: '%s' to '%s'", oldname, name);


 free(config->current_bar->id);
 config->current_bar->id = strdup(name);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
