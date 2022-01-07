
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 int CMD_SUCCESS ;
 int SWAY_INFO ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 int sway_log (int ,char*,char*) ;

struct cmd_results *cmd_client_noop(int argc, char **argv) {
 sway_log(SWAY_INFO, "Warning: %s is ignored by sway", argv[-1]);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
