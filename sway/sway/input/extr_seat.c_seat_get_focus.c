
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat_node {struct sway_node* node; } ;
struct TYPE_2__ {int next; } ;
struct sway_seat {TYPE_1__ focus_stack; int has_focus; } ;
struct sway_node {int dummy; } ;


 struct sway_seat_node* current ;
 int link ;
 struct sway_seat_node* wl_container_of (int ,int ,int ) ;
 scalar_t__ wl_list_empty (TYPE_1__*) ;

struct sway_node *seat_get_focus(struct sway_seat *seat) {
 if (!seat->has_focus) {
  return ((void*)0);
 }
 if (wl_list_empty(&seat->focus_stack)) {
  return ((void*)0);
 }
 struct sway_seat_node *current =
  wl_container_of(seat->focus_stack.next, current, link);
 return current->node;
}
