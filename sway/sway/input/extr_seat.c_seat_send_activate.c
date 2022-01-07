
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_seat {int dummy; } ;
struct sway_node {TYPE_1__* sway_container; } ;
struct sway_container {struct sway_node node; } ;
struct TYPE_6__ {int length; struct sway_container** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_7__ {int surface; } ;
struct TYPE_5__ {TYPE_3__* view; } ;


 int SWAY_DEBUG ;
 TYPE_2__* node_get_children (struct sway_node*) ;
 scalar_t__ node_is_view (struct sway_node*) ;
 int seat_is_input_allowed (struct sway_seat*,int ) ;
 int sway_log (int ,char*) ;
 int view_set_activated (TYPE_3__*,int) ;

__attribute__((used)) static void seat_send_activate(struct sway_node *node, struct sway_seat *seat) {
 if (node_is_view(node)) {
  if (!seat_is_input_allowed(seat, node->sway_container->view->surface)) {
   sway_log(SWAY_DEBUG, "Refusing to set focus, input is inhibited");
   return;
  }
  view_set_activated(node->sway_container->view, 1);
 } else {
  list_t *children = node_get_children(node);
  for (int i = 0; i < children->length; ++i) {
   struct sway_container *child = children->items[i];
   seat_send_activate(&child->node, seat);
  }
 }
}
