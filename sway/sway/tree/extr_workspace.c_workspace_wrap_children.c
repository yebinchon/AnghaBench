
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace {struct sway_container* fullscreen; TYPE_1__* tiling; int layout; } ;
struct sway_container {int layout; } ;
struct TYPE_2__ {struct sway_container** items; scalar_t__ length; } ;


 int container_add_child (struct sway_container*,struct sway_container*) ;
 struct sway_container* container_create (int *) ;
 int container_detach (struct sway_container*) ;
 int workspace_add_tiling (struct sway_workspace*,struct sway_container*) ;

struct sway_container *workspace_wrap_children(struct sway_workspace *ws) {
 struct sway_container *fs = ws->fullscreen;
 struct sway_container *middle = container_create(((void*)0));
 middle->layout = ws->layout;
 while (ws->tiling->length) {
  struct sway_container *child = ws->tiling->items[0];
  container_detach(child);
  container_add_child(middle, child);
 }
 workspace_add_tiling(ws, middle);
 ws->fullscreen = fs;
 return middle;
}
