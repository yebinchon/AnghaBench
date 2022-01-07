
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 int CMD_SUCCESS ;
 struct cmd_results* cmd_results_new (int ,int *) ;

struct cmd_results *cmd_nop(int argc, char **argv) {
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
