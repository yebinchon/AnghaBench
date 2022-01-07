
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_box {int dummy; } ;
struct sway_node {int type; int sway_container; int sway_workspace; int sway_output; } ;






 int container_get_box (int ,struct wlr_box*) ;
 int output_get_box (int ,struct wlr_box*) ;
 int root ;
 int root_get_box (int ,struct wlr_box*) ;
 int workspace_get_box (int ,struct wlr_box*) ;

void node_get_box(struct sway_node *node, struct wlr_box *box) {
 switch (node->type) {
 case 129:
  root_get_box(root, box);
  break;
 case 130:
  output_get_box(node->sway_output, box);
  break;
 case 128:
  workspace_get_box(node->sway_workspace, box);
  break;
 case 131:
  container_get_box(node->sway_container, box);
  break;
 }
}
