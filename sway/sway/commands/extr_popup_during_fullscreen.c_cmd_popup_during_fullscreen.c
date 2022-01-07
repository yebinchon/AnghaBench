
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int popup_during_fullscreen; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int POPUP_IGNORE ;
 int POPUP_LEAVE ;
 int POPUP_SMART ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ strcasecmp (char*,char*) ;

struct cmd_results *cmd_popup_during_fullscreen(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "popup_during_fullscreen",
     EXPECTED_EQUAL_TO, 1))) {
  return error;
 }

 if (strcasecmp(argv[0], "smart") == 0) {
  config->popup_during_fullscreen = POPUP_SMART;
 } else if (strcasecmp(argv[0], "ignore") == 0) {
  config->popup_during_fullscreen = POPUP_IGNORE;
 } else if (strcasecmp(argv[0], "leave_fullscreen") == 0) {
  config->popup_during_fullscreen = POPUP_LEAVE;
 } else {
  return cmd_results_new(CMD_INVALID, "Expected "
    "'popup_during_fullscreen smart|ignore|leave_fullscreen'");
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
