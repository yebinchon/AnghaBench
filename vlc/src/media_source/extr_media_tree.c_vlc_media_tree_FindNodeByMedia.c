
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int input_item_t ;
struct TYPE_5__ {int i_children; int const* p_item; struct TYPE_5__** pp_children; } ;
typedef TYPE_1__ input_item_node_t ;



__attribute__((used)) static bool
vlc_media_tree_FindNodeByMedia(input_item_node_t *parent,
                               const input_item_t *media,
                               input_item_node_t **result,
                               input_item_node_t **result_parent)
{
    for (int i = 0; i < parent->i_children; ++i)
    {
        input_item_node_t *child = parent->pp_children[i];
        if (child->p_item == media)
        {
            *result = child;
            if (result_parent)
                *result_parent = parent;
            return 1;
        }

        if (vlc_media_tree_FindNodeByMedia(child, media, result, result_parent))
            return 1;
    }

    return 0;
}
