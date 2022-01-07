
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace_state {int focused; struct sway_container* focused_inactive_child; void* tiling; void* floating; int output; int layout; int height; int width; int y; int x; int fullscreen; } ;
struct sway_workspace {int node; int tiling; int floating; int output; int layout; int height; int width; int y; int x; int fullscreen; } ;
struct sway_transaction_instruction {struct sway_workspace_state workspace_state; } ;
struct sway_seat {int dummy; } ;
struct sway_container {struct sway_container* parent; } ;


 void* create_list () ;
 struct sway_seat* input_manager_current_seat () ;
 int list_cat (void*,int ) ;
 int * seat_get_focus (struct sway_seat*) ;
 struct sway_container* seat_get_focus_inactive_tiling (struct sway_seat*,struct sway_workspace*) ;

__attribute__((used)) static void copy_workspace_state(struct sway_workspace *ws,
  struct sway_transaction_instruction *instruction) {
 struct sway_workspace_state *state = &instruction->workspace_state;

 state->fullscreen = ws->fullscreen;
 state->x = ws->x;
 state->y = ws->y;
 state->width = ws->width;
 state->height = ws->height;
 state->layout = ws->layout;

 state->output = ws->output;
 state->floating = create_list();
 state->tiling = create_list();
 list_cat(state->floating, ws->floating);
 list_cat(state->tiling, ws->tiling);

 struct sway_seat *seat = input_manager_current_seat();
 state->focused = seat_get_focus(seat) == &ws->node;


 struct sway_container *focus = seat_get_focus_inactive_tiling(seat, ws);
 if (focus) {
  while (focus->parent) {
   focus = focus->parent;
  }
 }
 state->focused_inactive_child = focus;
}
