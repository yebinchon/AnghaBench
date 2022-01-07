
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_node {int type; TYPE_2__* sway_workspace; TYPE_1__* sway_container; } ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_4__ {int layout; } ;
struct TYPE_3__ {int layout; } ;


 int L_NONE ;





enum sway_container_layout node_get_layout(struct sway_node *node) {
 switch (node->type) {
 case 131:
  return node->sway_container->layout;
 case 128:
  return node->sway_workspace->layout;
 case 130:
 case 129:
  return L_NONE;
 }
 return L_NONE;
}
