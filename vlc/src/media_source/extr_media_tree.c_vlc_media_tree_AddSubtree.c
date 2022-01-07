
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_children; int p_item; struct TYPE_6__** pp_children; } ;
typedef TYPE_1__ input_item_node_t ;


 scalar_t__ unlikely (int) ;
 TYPE_1__* vlc_media_tree_AddChild (TYPE_1__*,int ) ;

__attribute__((used)) static void
vlc_media_tree_AddSubtree(input_item_node_t *to, input_item_node_t *from)
{
    for (int i = 0; i < from->i_children; ++i)
    {
        input_item_node_t *child = from->pp_children[i];
        input_item_node_t *node = vlc_media_tree_AddChild(to, child->p_item);
        if (unlikely(!node))
            break;

        vlc_media_tree_AddSubtree(node, child);
    }
}
