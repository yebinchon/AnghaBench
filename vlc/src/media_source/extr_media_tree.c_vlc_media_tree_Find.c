
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int root; } ;
typedef TYPE_1__ vlc_media_tree_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int vlc_media_tree_AssertLocked (TYPE_1__*) ;
 int vlc_media_tree_FindNodeByMedia (int *,int const*,int **,int **) ;

bool
vlc_media_tree_Find(vlc_media_tree_t *tree, const input_item_t *media,
                    input_item_node_t **result,
                    input_item_node_t **result_parent)
{
    vlc_media_tree_AssertLocked(tree);



    return vlc_media_tree_FindNodeByMedia(&tree->root, media, result,
                                          result_parent);
}
