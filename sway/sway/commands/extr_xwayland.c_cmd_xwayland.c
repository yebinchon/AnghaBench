
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
typedef enum xwayland_mode { ____Placeholder_xwayland_mode } xwayland_mode ;
struct TYPE_2__ {int xwayland; scalar_t__ reloading; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_INFO ;
 int XWAYLAND_MODE_DISABLED ;
 int XWAYLAND_MODE_IMMEDIATE ;
 int XWAYLAND_MODE_LAZY ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ parse_boolean (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int sway_log (int ,char*) ;

struct cmd_results *cmd_xwayland(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "xwayland", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 sway_log(SWAY_INFO, "Ignoring `xwayland` command, "
  "sway hasn't been built with Xwayland support");


 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
