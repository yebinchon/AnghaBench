
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int media_vector_t ;
typedef int input_item_t ;
struct TYPE_3__ {int i_children; int * p_item; struct TYPE_3__** pp_children; } ;
typedef TYPE_1__ input_item_node_t ;


 int vlc_playlist_AssertLocked (int *) ;
 int vlc_vector_push (int *,int *) ;

__attribute__((used)) static void
vlc_playlist_CollectChildren(vlc_playlist_t *playlist,
                             media_vector_t *dest,
                             input_item_node_t *node)
{
    vlc_playlist_AssertLocked(playlist);
    for (int i = 0; i < node->i_children; ++i)
    {
        input_item_node_t *child = node->pp_children[i];
        input_item_t *media = child->p_item;
        vlc_vector_push(dest, media);
        vlc_playlist_CollectChildren(playlist, dest, child);
    }
}
