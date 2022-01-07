
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_node {int type; int sway_container; int sway_workspace; int sway_output; } ;






 int arrange_container (int ) ;
 int arrange_output (int ) ;
 int arrange_root () ;
 int arrange_workspace (int ) ;

void arrange_node(struct sway_node *node) {
 switch (node->type) {
 case 129:
  arrange_root();
  break;
 case 130:
  arrange_output(node->sway_output);
  break;
 case 128:
  arrange_workspace(node->sway_workspace);
  break;
 case 131:
  arrange_container(node->sway_container);
  break;
 }
}
