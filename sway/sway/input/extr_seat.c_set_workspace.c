
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int name; } ;
struct sway_seat {struct sway_workspace* workspace; int prev_workspace_name; } ;


 int SWAY_ERROR ;
 int free (int ) ;
 int ipc_event_workspace (struct sway_workspace*,struct sway_workspace*,char*) ;
 int strdup (int ) ;
 int sway_log (int ,char*) ;

__attribute__((used)) static void set_workspace(struct sway_seat *seat,
  struct sway_workspace *new_ws) {
 if (seat->workspace == new_ws) {
  return;
 }

 if (seat->workspace) {
  free(seat->prev_workspace_name);
  seat->prev_workspace_name = strdup(seat->workspace->name);
  if (!seat->prev_workspace_name) {
   sway_log(SWAY_ERROR, "Unable to allocate previous workspace name");
  }
 }

 ipc_event_workspace(seat->workspace, new_ws, "focus");
 seat->workspace = new_ws;
}
