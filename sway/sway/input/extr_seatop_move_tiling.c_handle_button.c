
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct wlr_input_device {int dummy; } ;
struct sway_workspace {int dummy; } ;
struct sway_seat {struct seatop_move_tiling_event* seatop_data; TYPE_1__* cursor; } ;
struct sway_node {scalar_t__ type; struct sway_container* sway_container; struct sway_workspace* sway_workspace; } ;
struct sway_container {int height_fraction; int width_fraction; int height; int width; struct sway_workspace* workspace; struct sway_container* parent; } ;
struct seatop_move_tiling_event {int target_edge; struct sway_node* target_node; struct sway_container* con; } ;
struct TYPE_6__ {int length; struct sway_container** items; } ;
typedef TYPE_2__ list_t ;
typedef enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
typedef enum wlr_button_state { ____Placeholder_wlr_button_state } wlr_button_state ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_5__ {scalar_t__ pressed_button_count; } ;


 int L_HORIZ ;
 int L_VERT ;
 scalar_t__ N_CONTAINER ;
 scalar_t__ N_WORKSPACE ;
 int WLR_EDGE_BOTTOM ;
 int WLR_EDGE_LEFT ;
 int WLR_EDGE_NONE ;
 int WLR_EDGE_TOP ;
 int arrange_workspace (struct sway_workspace*) ;
 int container_add_sibling (struct sway_container*,struct sway_container*,int) ;
 int container_detach (struct sway_container*) ;
 TYPE_2__* container_get_siblings (struct sway_container*) ;
 int container_parent_layout (struct sway_container*) ;
 int container_reap_empty (struct sway_container*) ;
 int container_split (struct sway_container*,int) ;
 int container_swap (struct sway_container*,struct sway_container*) ;
 int is_parallel (int,int) ;
 int list_find (TYPE_2__*,struct sway_container*) ;
 int seatop_begin_default (struct sway_seat*) ;
 int workspace_add_tiling (struct sway_workspace*,struct sway_container*) ;
 int workspace_insert_tiling (struct sway_workspace*,struct sway_container*,int) ;
 int workspace_split (struct sway_workspace*,int) ;

__attribute__((used)) static void handle_button(struct sway_seat *seat, uint32_t time_msec,
  struct wlr_input_device *device, uint32_t button,
  enum wlr_button_state state) {
 if (seat->cursor->pressed_button_count != 0) {
  return;
 }

 struct seatop_move_tiling_event *e = seat->seatop_data;

 if (!e->target_node) {
  seatop_begin_default(seat);
  return;
 }

 struct sway_container *con = e->con;
 struct sway_container *old_parent = con->parent;
 struct sway_workspace *old_ws = con->workspace;
 struct sway_node *target_node = e->target_node;
 struct sway_workspace *new_ws = target_node->type == N_WORKSPACE ?
  target_node->sway_workspace : target_node->sway_container->workspace;
 enum wlr_edges edge = e->target_edge;
 int after = edge != WLR_EDGE_TOP && edge != WLR_EDGE_LEFT;
 bool swap = edge == WLR_EDGE_NONE && target_node->type == N_CONTAINER;

 if (!swap) {
  container_detach(con);
 }



 if (target_node->type == N_WORKSPACE && edge == WLR_EDGE_NONE) {
  workspace_add_tiling(new_ws, con);
 } else if (target_node->type == N_CONTAINER) {

  struct sway_container *target = target_node->sway_container;
  if (swap) {
   container_swap(target_node->sway_container, con);
  } else {
   enum sway_container_layout layout = container_parent_layout(target);
   if (edge && !is_parallel(layout, edge)) {
    enum sway_container_layout new_layout = edge == WLR_EDGE_TOP ||
     edge == WLR_EDGE_BOTTOM ? L_VERT : L_HORIZ;
    container_split(target, new_layout);
   }
   container_add_sibling(target, con, after);
  }
 } else {

  enum sway_container_layout new_layout = edge == WLR_EDGE_TOP ||
   edge == WLR_EDGE_BOTTOM ? L_VERT : L_HORIZ;
  workspace_split(new_ws, new_layout);
  workspace_insert_tiling(new_ws, con, after);
 }

 if (old_parent) {
  container_reap_empty(old_parent);
 }




 list_t *siblings = container_get_siblings(con);
 if (siblings->length > 1) {
  int index = list_find(siblings, con);
  struct sway_container *sibling = index == 0 ?
   siblings->items[1] : siblings->items[index - 1];
  con->width = sibling->width;
  con->height = sibling->height;
  con->width_fraction = sibling->width_fraction;
  con->height_fraction = sibling->height_fraction;
 }

 arrange_workspace(old_ws);
 if (new_ws != old_ws) {
  arrange_workspace(new_ws);
 }

 seatop_begin_default(seat);
}
