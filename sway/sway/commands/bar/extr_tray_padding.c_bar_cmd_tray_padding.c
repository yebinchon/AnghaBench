
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct bar_config {int tray_padding; int id; } ;
struct TYPE_2__ {struct bar_config* current_bar; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int EXPECTED_AT_MOST ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_1__* config ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strtol (char*,char**,int) ;
 int sway_log (int ,char*,int ,int) ;

struct cmd_results *bar_cmd_tray_padding(int argc, char **argv) {
 return cmd_results_new(CMD_INVALID,
   "Sway has been compiled without tray support");

}
