
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_item_t ;
typedef int input_item_node_t ;


 int input_item_node_AppendNode (int *,int *) ;
 int * input_item_node_Create (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static input_item_node_t *
vlc_media_tree_AddChild(input_item_node_t *parent, input_item_t *media)
{
    input_item_node_t *node = input_item_node_Create(media);
    if (unlikely(!node))
        return ((void*)0);

    input_item_node_AppendNode(parent, node);

    return node;
}
