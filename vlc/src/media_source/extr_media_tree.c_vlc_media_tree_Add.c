
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_media_tree_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int on_children_added ;
 scalar_t__ unlikely (int) ;
 int * vlc_media_tree_AddChild (int *,int *) ;
 int vlc_media_tree_AssertLocked (int *) ;
 int vlc_media_tree_Notify (int *,int ,int *,int **,int) ;

input_item_node_t *
vlc_media_tree_Add(vlc_media_tree_t *tree, input_item_node_t *parent,
                   input_item_t *media)
{
    vlc_media_tree_AssertLocked(tree);

    input_item_node_t *node = vlc_media_tree_AddChild(parent, media);
    if (unlikely(!node))
        return ((void*)0);

    vlc_media_tree_Notify(tree, on_children_added, parent, &node, 1);

    return node;
}
