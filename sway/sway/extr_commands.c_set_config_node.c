
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_node {int type; int * sway_workspace; TYPE_1__* sway_container; } ;
struct TYPE_5__ {int * workspace; TYPE_1__* container; struct sway_node* node; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;
struct TYPE_4__ {int * workspace; } ;






 TYPE_3__* config ;

__attribute__((used)) static void set_config_node(struct sway_node *node) {
 config->handler_context.node = node;
 config->handler_context.container = ((void*)0);
 config->handler_context.workspace = ((void*)0);

 if (node == ((void*)0)) {
  return;
 }

 switch (node->type) {
 case 131:
  config->handler_context.container = node->sway_container;
  config->handler_context.workspace = node->sway_container->workspace;
  break;
 case 128:
  config->handler_context.workspace = node->sway_workspace;
  break;
 case 129:
 case 130:
  break;
 }
}
