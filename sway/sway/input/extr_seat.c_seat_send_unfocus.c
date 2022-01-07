
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat {int wlr_seat; int cursor; } ;
struct sway_node {scalar_t__ type; int sway_container; int sway_workspace; } ;


 scalar_t__ N_WORKSPACE ;
 int container_for_each_child (int ,int (*) (int ,struct sway_seat*),struct sway_seat*) ;
 int send_unfocus (int ,struct sway_seat*) ;
 int sway_cursor_constrain (int ,int *) ;
 int wlr_seat_keyboard_clear_focus (int ) ;
 int workspace_for_each_container (int ,int (*) (int ,struct sway_seat*),struct sway_seat*) ;

__attribute__((used)) static void seat_send_unfocus(struct sway_node *node, struct sway_seat *seat) {
 sway_cursor_constrain(seat->cursor, ((void*)0));
 wlr_seat_keyboard_clear_focus(seat->wlr_seat);
 if (node->type == N_WORKSPACE) {
  workspace_for_each_container(node->sway_workspace, send_unfocus, seat);
 } else {
  send_unfocus(node->sway_container, seat);
  container_for_each_child(node->sway_container, send_unfocus, seat);
 }
}
