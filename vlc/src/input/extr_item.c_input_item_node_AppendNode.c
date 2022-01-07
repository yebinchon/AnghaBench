
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pp_children; int i_children; } ;
typedef TYPE_1__ input_item_node_t ;


 int TAB_APPEND (int ,int ,TYPE_1__*) ;
 int assert (int ) ;

void input_item_node_AppendNode( input_item_node_t *p_parent,
                                 input_item_node_t *p_child )
{
    assert(p_parent != ((void*)0));
    assert(p_child != ((void*)0));
    TAB_APPEND(p_parent->i_children, p_parent->pp_children, p_child);
}
