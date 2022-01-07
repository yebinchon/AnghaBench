
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_playlist_t ;
struct TYPE_5__ {int size; int data; } ;
typedef TYPE_1__ media_vector_t ;
typedef int input_item_node_t ;


 TYPE_1__ VLC_VECTOR_INITIALIZER ;
 int vlc_playlist_AssertLocked (int *) ;
 int vlc_playlist_CollectChildren (int *,TYPE_1__*,int *) ;
 int vlc_playlist_Expand (int *,size_t,int ,int ) ;
 int vlc_vector_destroy (TYPE_1__*) ;

int
vlc_playlist_ExpandItem(vlc_playlist_t *playlist, size_t index,
                        input_item_node_t *node)
{
    vlc_playlist_AssertLocked(playlist);

    media_vector_t flatten = VLC_VECTOR_INITIALIZER;
    vlc_playlist_CollectChildren(playlist, &flatten, node);

    int ret = vlc_playlist_Expand(playlist, index, flatten.data, flatten.size);
    vlc_vector_destroy(&flatten);

    return ret;
}
