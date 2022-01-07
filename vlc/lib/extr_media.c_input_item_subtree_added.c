
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int VLC_UNUSED (int *) ;
 int libvlc_media_add_subtree (int *,int *) ;

__attribute__((used)) static void input_item_subtree_added(input_item_t *item,
                                     input_item_node_t *node,
                                     void *user_data)
{
    VLC_UNUSED(item);
    libvlc_media_t * p_md = user_data;
    libvlc_media_add_subtree(p_md, node);
}
