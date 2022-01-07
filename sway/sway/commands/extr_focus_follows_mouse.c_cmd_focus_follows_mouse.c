
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int focus_follows_mouse; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int FOLLOWS_ALWAYS ;
 int FOLLOWS_NO ;
 int FOLLOWS_YES ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ strcmp (char*,char*) ;

struct cmd_results *cmd_focus_follows_mouse(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "focus_follows_mouse", EXPECTED_EQUAL_TO, 1))) {
  return error;
 } else if(strcmp(argv[0], "no") == 0) {
  config->focus_follows_mouse = FOLLOWS_NO;
 } else if(strcmp(argv[0], "yes") == 0) {
  config->focus_follows_mouse = FOLLOWS_YES;
 } else if(strcmp(argv[0], "always") == 0) {
  config->focus_follows_mouse = FOLLOWS_ALWAYS;
 } else {
  return cmd_results_new(CMD_FAILURE,
    "Expected 'focus_follows_mouse no|yes|always'");
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
