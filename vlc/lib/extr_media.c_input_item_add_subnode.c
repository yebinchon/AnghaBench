
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_3__ {int i_children; int p_item; struct TYPE_3__** pp_children; } ;
typedef TYPE_1__ input_item_node_t ;


 int * input_item_add_subitem (int *,int ) ;
 int libvlc_media_release (int *) ;

__attribute__((used)) static void input_item_add_subnode( libvlc_media_t *md,
                                    input_item_node_t *node )
{
    for( int i = 0; i < node->i_children; i++ )
    {
        input_item_node_t *child = node->pp_children[i];
        libvlc_media_t *md_child = input_item_add_subitem( md, child->p_item );

        if( md_child != ((void*)0) )
        {
            input_item_add_subnode( md_child, child );
            libvlc_media_release( md_child );
        }
    }
}
