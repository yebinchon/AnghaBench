
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container_state {scalar_t__ content_x; scalar_t__ content_y; scalar_t__ content_width; scalar_t__ content_height; } ;
struct sway_transaction_instruction {struct sway_container_state container_state; } ;
struct sway_node {TYPE_2__* sway_container; scalar_t__ destroying; } ;
struct TYPE_4__ {TYPE_1__* view; struct sway_container_state current; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ SWAY_VIEW_XWAYLAND ;
 int node_is_view (struct sway_node*) ;

__attribute__((used)) static bool should_configure(struct sway_node *node,
  struct sway_transaction_instruction *instruction) {
 if (!node_is_view(node)) {
  return 0;
 }
 if (node->destroying) {
  return 0;
 }
 struct sway_container_state *cstate = &node->sway_container->current;
 struct sway_container_state *istate = &instruction->container_state;
 if (cstate->content_width == istate->content_width &&
   cstate->content_height == istate->content_height) {
  return 0;
 }
 return 1;
}
