
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container_state {int focused; int * focused_inactive_child; int children; int content_height; int content_width; int content_y; int content_x; int border_bottom; int border_right; int border_left; int border_top; int border_thickness; int border; int workspace; int parent; int fullscreen_mode; int height; int width; int y; int x; int layout; } ;
struct sway_transaction_instruction {struct sway_container_state container_state; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int * sway_container; } ;
struct sway_container {int node; int view; int children; int content_height; int content_width; int content_y; int content_x; int border_bottom; int border_right; int border_left; int border_top; int border_thickness; int border; int workspace; int parent; int fullscreen_mode; int height; int width; int y; int x; int layout; } ;


 int create_list () ;
 struct sway_seat* input_manager_current_seat () ;
 int list_cat (int ,int ) ;
 struct sway_node* seat_get_active_tiling_child (struct sway_seat*,int *) ;
 int * seat_get_focus (struct sway_seat*) ;

__attribute__((used)) static void copy_container_state(struct sway_container *container,
  struct sway_transaction_instruction *instruction) {
 struct sway_container_state *state = &instruction->container_state;

 state->layout = container->layout;
 state->x = container->x;
 state->y = container->y;
 state->width = container->width;
 state->height = container->height;
 state->fullscreen_mode = container->fullscreen_mode;
 state->parent = container->parent;
 state->workspace = container->workspace;
 state->border = container->border;
 state->border_thickness = container->border_thickness;
 state->border_top = container->border_top;
 state->border_left = container->border_left;
 state->border_right = container->border_right;
 state->border_bottom = container->border_bottom;
 state->content_x = container->content_x;
 state->content_y = container->content_y;
 state->content_width = container->content_width;
 state->content_height = container->content_height;

 if (!container->view) {
  state->children = create_list();
  list_cat(state->children, container->children);
 }

 struct sway_seat *seat = input_manager_current_seat();
 state->focused = seat_get_focus(seat) == &container->node;

 if (!container->view) {
  struct sway_node *focus =
   seat_get_active_tiling_child(seat, &container->node);
  state->focused_inactive_child = focus ? focus->sway_container : ((void*)0);
 }
}
