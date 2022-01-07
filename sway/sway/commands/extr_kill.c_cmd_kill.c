
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_container {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_workspace* workspace; struct sway_container* container; } ;
struct TYPE_8__ {TYPE_2__ handler_context; } ;
struct TYPE_7__ {TYPE_1__* outputs; } ;
struct TYPE_5__ {int length; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int close_container_iterator (struct sway_container*,int *) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_4__* config ;
 int container_for_each_child (struct sway_container*,int (*) (struct sway_container*,int *),int *) ;
 TYPE_3__* root ;
 int workspace_for_each_container (struct sway_workspace*,int (*) (struct sway_container*,int *),int *) ;

struct cmd_results *cmd_kill(int argc, char **argv) {
 if (!root->outputs->length) {
  return cmd_results_new(CMD_INVALID,
    "Can't run this command while there's no outputs connected.");
 }
 struct sway_container *con = config->handler_context.container;
 struct sway_workspace *ws = config->handler_context.workspace;

 if (con) {
  close_container_iterator(con, ((void*)0));
  container_for_each_child(con, close_container_iterator, ((void*)0));
 } else {
  workspace_for_each_container(ws, close_container_iterator, ((void*)0));
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
