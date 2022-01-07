
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace {void* layout; TYPE_1__* tiling; } ;
struct sway_container {scalar_t__ height; scalar_t__ width; int parent; } ;
typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_2__ {int length; } ;


 void* L_HORIZ ;
 void* L_VERT ;
 int WLR_DIRECTION_LEFT ;
 int WLR_DIRECTION_RIGHT ;
 int WLR_DIRECTION_UP ;
 int container_detach (struct sway_container*) ;
 int container_flatten (struct sway_container*) ;
 int workspace_insert_tiling (struct sway_workspace*,struct sway_container*,int) ;
 int workspace_update_representation (struct sway_workspace*) ;
 struct sway_container* workspace_wrap_children (struct sway_workspace*) ;

__attribute__((used)) static void workspace_rejigger(struct sway_workspace *ws,
  struct sway_container *child, enum wlr_direction move_dir) {
 if (!child->parent && ws->tiling->length == 1) {
  ws->layout =
   move_dir == WLR_DIRECTION_LEFT || move_dir == WLR_DIRECTION_RIGHT ?
   L_HORIZ : L_VERT;
  workspace_update_representation(ws);
  return;
 }
 container_detach(child);
 struct sway_container *new_parent = workspace_wrap_children(ws);

 int index =
  move_dir == WLR_DIRECTION_LEFT || move_dir == WLR_DIRECTION_UP ? 0 : 1;
 workspace_insert_tiling(ws, child, index);
 container_flatten(new_parent);
 ws->layout =
  move_dir == WLR_DIRECTION_LEFT || move_dir == WLR_DIRECTION_RIGHT ?
  L_HORIZ : L_VERT;
 workspace_update_representation(ws);
 child->width = child->height = 0;
}
