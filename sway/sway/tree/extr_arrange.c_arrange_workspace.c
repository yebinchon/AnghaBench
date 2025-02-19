
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlr_box {scalar_t__ width; scalar_t__ height; int x; int y; } ;
struct TYPE_4__ {double left; double top; } ;
struct sway_workspace {scalar_t__ width; scalar_t__ height; int x; int y; TYPE_3__* floating; int layout; int tiling; struct sway_container* fullscreen; int name; int node; TYPE_1__ current_gaps; struct sway_output* output; } ;
struct sway_output {int lx; int ly; int width; int height; struct wlr_box usable_area; } ;
struct sway_container {int x; int width; int y; int height; } ;
struct TYPE_6__ {int length; struct sway_container** items; } ;
struct TYPE_5__ {scalar_t__ reloading; } ;


 int SWAY_DEBUG ;
 int arrange_children (int ,int ,struct wlr_box*) ;
 int arrange_container (struct sway_container*) ;
 int arrange_floating (TYPE_3__*) ;
 TYPE_2__* config ;
 int container_floating_move_to_center (struct sway_container*) ;
 int container_floating_translate (struct sway_container*,double,double) ;
 int node_set_dirty (int *) ;
 int sway_log (int ,char*,scalar_t__,double,double,...) ;
 int wlr_box_contains_point (struct wlr_box*,double,double) ;
 int workspace_add_gaps (struct sway_workspace*) ;
 int workspace_get_box (struct sway_workspace*,struct wlr_box*) ;

void arrange_workspace(struct sway_workspace *workspace) {
 if (config->reloading) {
  return;
 }
 if (!workspace->output) {

  return;
 }
 struct sway_output *output = workspace->output;
 struct wlr_box *area = &output->usable_area;
 sway_log(SWAY_DEBUG, "Usable area for ws: %dx%d@%d,%d",
   area->width, area->height, area->x, area->y);

 bool first_arrange = workspace->width == 0 && workspace->height == 0;
 double prev_x = workspace->x - workspace->current_gaps.left;
 double prev_y = workspace->y - workspace->current_gaps.top;
 workspace->width = area->width;
 workspace->height = area->height;
 workspace->x = output->lx + area->x;
 workspace->y = output->ly + area->y;


 double diff_x = workspace->x - prev_x;
 double diff_y = workspace->y - prev_y;
 if (!first_arrange && (diff_x != 0 || diff_y != 0)) {
  for (int i = 0; i < workspace->floating->length; ++i) {
   struct sway_container *floater = workspace->floating->items[i];
   container_floating_translate(floater, diff_x, diff_y);
   double center_x = floater->x + floater->width / 2;
   double center_y = floater->y + floater->height / 2;
   struct wlr_box workspace_box;
   workspace_get_box(workspace, &workspace_box);
   if (!wlr_box_contains_point(&workspace_box, center_x, center_y)) {
    container_floating_move_to_center(floater);
   }
  }
 }

 workspace_add_gaps(workspace);
 node_set_dirty(&workspace->node);
 sway_log(SWAY_DEBUG, "Arranging workspace '%s' at %f, %f", workspace->name,
   workspace->x, workspace->y);
 if (workspace->fullscreen) {
  struct sway_container *fs = workspace->fullscreen;
  fs->x = output->lx;
  fs->y = output->ly;
  fs->width = output->width;
  fs->height = output->height;
  arrange_container(fs);
 } else {
  struct wlr_box box;
  workspace_get_box(workspace, &box);
  arrange_children(workspace->tiling, workspace->layout, &box);
  arrange_floating(workspace->floating);
 }
}
