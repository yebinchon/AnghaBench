
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pp_children; int i_children; } ;
typedef TYPE_1__ input_item_node_t ;


 int TAB_REMOVE (int ,int ,TYPE_1__*) ;

void input_item_node_RemoveNode( input_item_node_t *parent,
                                 input_item_node_t *child )
{
    TAB_REMOVE(parent->i_children, parent->pp_children, child);
}
