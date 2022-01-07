
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_children; int * pp_children; } ;
typedef TYPE_1__ input_item_node_t ;


 int free (int *) ;
 int input_item_node_Delete (int ) ;

__attribute__((used)) static void
vlc_media_tree_ClearChildren(input_item_node_t *root)
{
    for (int i = 0; i < root->i_children; ++i)
        input_item_node_Delete(root->pp_children[i]);

    free(root->pp_children);
    root->pp_children = ((void*)0);
    root->i_children = 0;
}
