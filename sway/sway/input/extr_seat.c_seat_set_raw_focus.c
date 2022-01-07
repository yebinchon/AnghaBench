
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat_node {int link; } ;
struct sway_seat {int focus_stack; } ;
struct sway_node {int dummy; } ;


 struct sway_node* node_get_parent (struct sway_node*) ;
 int node_set_dirty (struct sway_node*) ;
 struct sway_seat_node* seat_node_from_node (struct sway_seat*,struct sway_node*) ;
 int wl_list_insert (int *,int *) ;
 int wl_list_remove (int *) ;

void seat_set_raw_focus(struct sway_seat *seat, struct sway_node *node) {
 struct sway_seat_node *seat_node = seat_node_from_node(seat, node);
 wl_list_remove(&seat_node->link);
 wl_list_insert(&seat->focus_stack, &seat_node->link);
 node_set_dirty(node);



 struct sway_node *parent = node_get_parent(node);
 if (parent) {
  node_set_dirty(parent);
 }
}
