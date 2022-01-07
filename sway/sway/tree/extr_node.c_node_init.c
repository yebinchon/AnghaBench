
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int destroy; } ;
struct sway_node {int type; TYPE_1__ events; void* sway_root; int id; } ;
typedef enum sway_node_type { ____Placeholder_sway_node_type } sway_node_type ;


 int wl_signal_init (int *) ;

void node_init(struct sway_node *node, enum sway_node_type type, void *thing) {
 static size_t next_id = 1;
 node->id = next_id++;
 node->type = type;
 node->sway_root = thing;
 wl_signal_init(&node->events.destroy);
}
