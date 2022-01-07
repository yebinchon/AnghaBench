
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_8__ {int length; char** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_9__ {TYPE_1__* current_bar; } ;
struct TYPE_7__ {int id; TYPE_2__* tray_outputs; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_6__* config ;
 TYPE_2__* create_list () ;
 int free (char*) ;
 int list_add (TYPE_2__*,int ) ;
 int list_del (TYPE_2__*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strdup (char*) ;
 int sway_log (int ,char*,char*,...) ;

struct cmd_results *bar_cmd_tray_output(int argc, char **argv) {
 return cmd_results_new(CMD_INVALID,
   "Sway has been compiled without tray support");

}
