
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat_node {int link; } ;
struct sway_seat {int focus_stack; } ;
struct sway_node {int dummy; } ;


 struct sway_seat_node* seat_node_from_node (struct sway_seat*,struct sway_node*) ;
 int wl_list_insert (int *,int *) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void collect_focus_iter(struct sway_node *node, void *data) {
 struct sway_seat *seat = data;
 struct sway_seat_node *seat_node = seat_node_from_node(seat, node);
 if (!seat_node) {
  return;
 }
 wl_list_remove(&seat_node->link);
 wl_list_insert(&seat->focus_stack, &seat_node->link);
}
