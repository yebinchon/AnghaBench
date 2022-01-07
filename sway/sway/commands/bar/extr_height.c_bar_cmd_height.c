
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int height; int id; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_DEBUG ;
 int atoi (char*) ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_2__* config ;
 int sway_log (int ,char*,int,int ) ;

struct cmd_results *bar_cmd_height(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "height", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 int height = atoi(argv[0]);
 if (height < 0) {
  return cmd_results_new(CMD_INVALID,
    "Invalid height value: %s", argv[0]);
 }
 config->current_bar->height = height;
 sway_log(SWAY_DEBUG, "Setting bar height to %d on bar: %s",
   height, config->current_bar->id);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
