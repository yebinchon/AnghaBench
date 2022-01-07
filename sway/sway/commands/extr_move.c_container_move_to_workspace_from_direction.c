
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_workspace {TYPE_1__* tiling; int layout; } ;
struct sway_container {struct sway_container* parent; scalar_t__ height_fraction; scalar_t__ width_fraction; scalar_t__ height; scalar_t__ width; } ;
typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_5__ {int seat; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;
struct TYPE_4__ {int length; } ;


 int SWAY_DEBUG ;
 int WLR_DIRECTION_DOWN ;
 int WLR_DIRECTION_RIGHT ;
 TYPE_3__* config ;
 int container_move_to_container_from_direction (struct sway_container*,struct sway_container*,int) ;
 scalar_t__ is_parallel (int ,int) ;
 struct sway_container* seat_get_focus_inactive_tiling (int ,struct sway_workspace*) ;
 int sway_log (int ,char*) ;
 int workspace_add_tiling (struct sway_workspace*,struct sway_container*) ;
 int workspace_insert_tiling (struct sway_workspace*,struct sway_container*,int) ;

__attribute__((used)) static void container_move_to_workspace_from_direction(
  struct sway_container *container, struct sway_workspace *workspace,
  enum wlr_direction move_dir) {
 container->width = container->height = 0;
 container->width_fraction = container->height_fraction = 0;

 if (is_parallel(workspace->layout, move_dir)) {
  sway_log(SWAY_DEBUG, "Reparenting container (parallel)");
  int index =
   move_dir == WLR_DIRECTION_RIGHT || move_dir == WLR_DIRECTION_DOWN ?
   0 : workspace->tiling->length;
  workspace_insert_tiling(workspace, container, index);
  return;
 }

 sway_log(SWAY_DEBUG, "Reparenting container (perpendicular)");
 struct sway_container *focus_inactive = seat_get_focus_inactive_tiling(
   config->handler_context.seat, workspace);
 if (!focus_inactive) {

  workspace_add_tiling(workspace, container);
  return;
 }
 while (focus_inactive->parent) {
  focus_inactive = focus_inactive->parent;
 }
 container_move_to_container_from_direction(container, focus_inactive,
   move_dir);
}
