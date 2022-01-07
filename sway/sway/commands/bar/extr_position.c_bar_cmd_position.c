
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int valid ;
struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int position; int id; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_2__* config ;
 int free (int ) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strdup (char*) ;
 int sway_log (int ,char*,char*,int ) ;

struct cmd_results *bar_cmd_position(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "position", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 char *valid[] = { "top", "bottom" };
 for (size_t i = 0; i < sizeof(valid) / sizeof(valid[0]); ++i) {
  if (strcasecmp(valid[i], argv[0]) == 0) {
   sway_log(SWAY_DEBUG, "Setting bar position '%s' for bar: %s",
     argv[0], config->current_bar->id);
   free(config->current_bar->position);
   config->current_bar->position = strdup(argv[0]);
   return cmd_results_new(CMD_SUCCESS, ((void*)0));
  }
 }
 return cmd_results_new(CMD_INVALID, "Invalid value %s", argv[0]);
}
