
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int root; } ;
typedef TYPE_1__ vlc_media_tree_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int input_item_node_Delete (int *) ;
 int input_item_node_RemoveNode (int *,int *) ;
 int on_children_removed ;
 int vlc_media_tree_AssertLocked (TYPE_1__*) ;
 int vlc_media_tree_FindNodeByMedia (int *,int *,int **,int **) ;
 int vlc_media_tree_Notify (TYPE_1__*,int ,int *,int **,int) ;

bool
vlc_media_tree_Remove(vlc_media_tree_t *tree, input_item_t *media)
{
    vlc_media_tree_AssertLocked(tree);

    input_item_node_t *node;
    input_item_node_t *parent;
    if (!vlc_media_tree_FindNodeByMedia(&tree->root, media, &node, &parent))
        return 0;

    input_item_node_RemoveNode(parent, node);
    vlc_media_tree_Notify(tree, on_children_removed, parent, &node, 1);
    input_item_node_Delete(node);
    return 1;
}
