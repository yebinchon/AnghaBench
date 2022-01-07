
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int focus_on_window_activation; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int FOWA_FOCUS ;
 int FOWA_NONE ;
 int FOWA_SMART ;
 int FOWA_URGENT ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ strcmp (char*,char*) ;

struct cmd_results *cmd_focus_on_window_activation(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "focus_on_window_activation",
     EXPECTED_EQUAL_TO, 1))) {
  return error;
 }

 if (strcmp(argv[0], "smart") == 0) {
  config->focus_on_window_activation = FOWA_SMART;
 } else if (strcmp(argv[0], "urgent") == 0) {
  config->focus_on_window_activation = FOWA_URGENT;
 } else if (strcmp(argv[0], "focus") == 0) {
  config->focus_on_window_activation = FOWA_FOCUS;
 } else if (strcmp(argv[0], "none") == 0) {
  config->focus_on_window_activation = FOWA_NONE;
 } else {
  return cmd_results_new(CMD_INVALID,
    "Expected "
    "'focus_on_window_activation smart|urgent|focus|none'");
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
