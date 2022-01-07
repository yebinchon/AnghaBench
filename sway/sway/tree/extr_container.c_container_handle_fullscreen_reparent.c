
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {scalar_t__ fullscreen_mode; TYPE_1__* workspace; } ;
struct TYPE_2__ {struct sway_container* fullscreen; } ;


 scalar_t__ FULLSCREEN_WORKSPACE ;
 int arrange_workspace (TYPE_1__*) ;
 int container_fullscreen_disable (struct sway_container*) ;

void container_handle_fullscreen_reparent(struct sway_container *con) {
 if (con->fullscreen_mode != FULLSCREEN_WORKSPACE || !con->workspace ||
   con->workspace->fullscreen == con) {
  return;
 }
 if (con->workspace->fullscreen) {
  container_fullscreen_disable(con->workspace->fullscreen);
 }
 con->workspace->fullscreen = con;

 arrange_workspace(con->workspace);
}
