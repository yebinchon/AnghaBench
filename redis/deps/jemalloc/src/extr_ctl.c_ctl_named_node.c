
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ named; } ;
typedef TYPE_1__ ctl_node_t ;
typedef int ctl_named_node_t ;



__attribute__((used)) static const ctl_named_node_t *
ctl_named_node(const ctl_node_t *node) {
 return ((node->named) ? (const ctl_named_node_t *)node : ((void*)0));
}
