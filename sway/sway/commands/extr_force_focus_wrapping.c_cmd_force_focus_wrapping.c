
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {scalar_t__ focus_wrapping; scalar_t__ reading; } ;


 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_INFO ;
 scalar_t__ WRAP_FORCE ;
 scalar_t__ WRAP_YES ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_1__* config ;
 int config_add_swaynag_warning (char*) ;
 scalar_t__ parse_boolean (char*,int) ;
 int sway_log (int ,char*) ;

struct cmd_results *cmd_force_focus_wrapping(int argc, char **argv) {
 sway_log(SWAY_INFO, "Warning: force_focus_wrapping is deprecated. "
  "Use focus_wrapping instead.");
 if (config->reading) {
  config_add_swaynag_warning("force_focus_wrapping is deprecated. "
   "Use focus_wrapping instead.");
 }

 struct cmd_results *error =
  checkarg(argc, "force_focus_wrapping", EXPECTED_EQUAL_TO, 1);
 if (error) {
  return error;
 }

 if (parse_boolean(argv[0], config->focus_wrapping == WRAP_FORCE)) {
  config->focus_wrapping = WRAP_FORCE;
 } else {
  config->focus_wrapping = WRAP_YES;
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
