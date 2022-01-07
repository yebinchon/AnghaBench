
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_6__ {TYPE_2__* current_bar; int reading; } ;
struct TYPE_4__ {int top; int right; int bottom; int left; } ;
struct TYPE_5__ {int id; TYPE_1__ gaps; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int EXPECTED_AT_MOST ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_3__* config ;
 int ipc_event_barconfig_update (TYPE_2__*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strtol (char*,char**,int) ;
 int sway_log (int ,char*,int,int,int,int,int ) ;

struct cmd_results *bar_cmd_gaps(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "gaps", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 if ((error = checkarg(argc, "gaps", EXPECTED_AT_MOST, 4))) {
  return error;
 }

 int top = 0, right = 0, bottom = 0, left = 0;

 for (int i = 0; i < argc; i++) {
  char *end;
  int amount = strtol(argv[i], &end, 10);
  if (strlen(end) && strcasecmp(end, "px") != 0) {
   return cmd_results_new(CMD_INVALID,
     "Expected 'bar [<bar-id>] gaps <all> | <horizonal> "
     "<vertical> | <top> <right> <bottom> <left>'");
  }

  if (i == 0) {
   top = amount;
  }
  if (i == 0 || i == 1) {
   right = amount;
  }
  if (i == 0 || i == 2) {
   bottom = amount;
  }
  if (i == 0 || i == 1 || i == 3) {
   left = amount;
  }
 }

 config->current_bar->gaps.top = top;
 config->current_bar->gaps.right = right;
 config->current_bar->gaps.bottom = bottom;
 config->current_bar->gaps.left = left;

 sway_log(SWAY_DEBUG, "Setting bar gaps to %d %d %d %d on bar: %s",
   config->current_bar->gaps.top, config->current_bar->gaps.right,
   config->current_bar->gaps.bottom, config->current_bar->gaps.left,
   config->current_bar->id);

 if (!config->reading) {
  ipc_event_barconfig_update(config->current_bar);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
