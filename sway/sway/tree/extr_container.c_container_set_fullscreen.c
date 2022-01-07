
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {int fullscreen_mode; TYPE_1__* workspace; } ;
typedef enum sway_fullscreen_mode { ____Placeholder_sway_fullscreen_mode } sway_fullscreen_mode ;
struct TYPE_4__ {struct sway_container* fullscreen_global; } ;
struct TYPE_3__ {struct sway_container* fullscreen; } ;





 int container_fullscreen_disable (struct sway_container*) ;
 int container_fullscreen_global (struct sway_container*) ;
 int container_fullscreen_workspace (struct sway_container*) ;
 TYPE_2__* root ;

void container_set_fullscreen(struct sway_container *con,
  enum sway_fullscreen_mode mode) {
 if (con->fullscreen_mode == mode) {
  return;
 }

 switch (mode) {
 case 129:
  container_fullscreen_disable(con);
  break;
 case 128:
  if (root->fullscreen_global) {
   container_fullscreen_disable(root->fullscreen_global);
  }
  if (con->workspace && con->workspace->fullscreen) {
   container_fullscreen_disable(con->workspace->fullscreen);
  }
  container_fullscreen_workspace(con);
  break;
 case 130:
  if (root->fullscreen_global) {
   container_fullscreen_disable(root->fullscreen_global);
  }
  if (con->fullscreen_mode == 128) {
   container_fullscreen_disable(con);
  }
  container_fullscreen_global(con);
  break;
 }
}
