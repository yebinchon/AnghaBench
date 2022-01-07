
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_workspace {TYPE_1__* output; } ;
struct sway_node {int type; struct sway_workspace* sway_workspace; struct sway_container* sway_container; } ;
struct sway_container {TYPE_3__* workspace; TYPE_2__* parent; } ;
struct TYPE_8__ {struct sway_node node; } ;
struct TYPE_7__ {struct sway_node node; } ;
struct TYPE_6__ {struct sway_node node; } ;
struct TYPE_5__ {struct sway_node node; } ;






 TYPE_4__* root ;

struct sway_node *node_get_parent(struct sway_node *node) {
 switch (node->type) {
 case 131: {
   struct sway_container *con = node->sway_container;
   if (con->parent) {
    return &con->parent->node;
   }
   if (con->workspace) {
    return &con->workspace->node;
   }
  }
  return ((void*)0);
 case 128: {
   struct sway_workspace *ws = node->sway_workspace;
   if (ws->output) {
    return &ws->output->node;
   }
  }
  return ((void*)0);
 case 130:
  return &root->node;
 case 129:
  return ((void*)0);
 }
 return ((void*)0);
}
