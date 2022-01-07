
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int destroy; } ;
struct TYPE_5__ {int destroying; TYPE_1__ events; } ;
struct sway_workspace {TYPE_2__ node; scalar_t__ output; int name; } ;


 int SWAY_DEBUG ;
 int ipc_event_workspace (int *,struct sway_workspace*,char*) ;
 int node_set_dirty (TYPE_2__*) ;
 int sway_log (int ,char*,int ) ;
 int wl_signal_emit (int *,TYPE_2__*) ;
 int workspace_detach (struct sway_workspace*) ;

void workspace_begin_destroy(struct sway_workspace *workspace) {
 sway_log(SWAY_DEBUG, "Destroying workspace '%s'", workspace->name);
 ipc_event_workspace(((void*)0), workspace, "empty");
 wl_signal_emit(&workspace->node.events.destroy, &workspace->node);

 if (workspace->output) {
  workspace_detach(workspace);
 }
 workspace->node.destroying = 1;
 node_set_dirty(&workspace->node);
}
