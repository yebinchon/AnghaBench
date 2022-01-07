
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int root; } ;
typedef TYPE_1__ vlc_media_tree_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int on_children_reset ;
 int vlc_media_tree_AddSubtree (int *,int *) ;
 int vlc_media_tree_ClearChildren (int *) ;
 int vlc_media_tree_FindNodeByMedia (int *,int *,int **,int *) ;
 int vlc_media_tree_Lock (TYPE_1__*) ;
 int vlc_media_tree_Notify (TYPE_1__*,int ,int *) ;
 int vlc_media_tree_Unlock (TYPE_1__*) ;

__attribute__((used)) static void
media_subtree_changed(input_item_t *media, input_item_node_t *node,
                      void *userdata)
{
    vlc_media_tree_t *tree = userdata;

    vlc_media_tree_Lock(tree);
    input_item_node_t *subtree_root;

    bool found = vlc_media_tree_FindNodeByMedia(&tree->root, media,
                                                &subtree_root, ((void*)0));
    if (!found) {

        vlc_media_tree_Unlock(tree);
        return;
    }

    vlc_media_tree_ClearChildren(subtree_root);
    vlc_media_tree_AddSubtree(subtree_root, node);
    vlc_media_tree_Notify(tree, on_children_reset, subtree_root);
    vlc_media_tree_Unlock(tree);
}
