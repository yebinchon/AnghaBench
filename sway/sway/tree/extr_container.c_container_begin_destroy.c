
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int destroy; } ;
struct TYPE_7__ {int destroying; TYPE_1__ events; } ;
struct sway_container {scalar_t__ fullscreen_mode; TYPE_2__* workspace; scalar_t__ parent; scalar_t__ scratchpad; TYPE_3__ node; scalar_t__ view; } ;
struct TYPE_6__ {int * fullscreen; } ;


 scalar_t__ FULLSCREEN_GLOBAL ;
 scalar_t__ FULLSCREEN_WORKSPACE ;
 int container_detach (struct sway_container*) ;
 int container_end_mouse_operation (struct sway_container*) ;
 int container_fullscreen_disable (struct sway_container*) ;
 int ipc_event_window (struct sway_container*,char*) ;
 int node_set_dirty (TYPE_3__*) ;
 int root_scratchpad_remove_container (struct sway_container*) ;
 int wl_signal_emit (int *,TYPE_3__*) ;

void container_begin_destroy(struct sway_container *con) {
 if (con->view) {
  ipc_event_window(con, "close");
 }


 if (con->fullscreen_mode == FULLSCREEN_WORKSPACE && con->workspace) {
  con->workspace->fullscreen = ((void*)0);
 }
 if (con->scratchpad && con->fullscreen_mode == FULLSCREEN_GLOBAL) {
  container_fullscreen_disable(con);
 }

 wl_signal_emit(&con->node.events.destroy, &con->node);

 container_end_mouse_operation(con);

 con->node.destroying = 1;
 node_set_dirty(&con->node);

 if (con->scratchpad) {
  root_scratchpad_remove_container(con);
 }

 if (con->fullscreen_mode == FULLSCREEN_GLOBAL) {
  container_fullscreen_disable(con);
 }

 if (con->parent || con->workspace) {
  container_detach(con);
 }
}
