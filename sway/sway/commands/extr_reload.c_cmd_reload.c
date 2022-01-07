
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_4__ {int current_config_path; } ;
struct TYPE_3__ {int wl_event_loop; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* checkarg (int,char*,int ,int ) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 int do_reload ;
 int load_main_config (int ,int,int) ;
 TYPE_1__ server ;
 int wl_event_loop_add_idle (int ,int ,int *) ;

struct cmd_results *cmd_reload(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "reload", EXPECTED_EQUAL_TO, 0))) {
  return error;
 }

 if (!load_main_config(config->current_config_path, 1, 1)) {
  return cmd_results_new(CMD_FAILURE, "Error(s) reloading config.");
 }



 wl_event_loop_add_idle(server.wl_event_loop, do_reload, ((void*)0));

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
