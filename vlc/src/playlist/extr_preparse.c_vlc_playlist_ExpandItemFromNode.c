
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int ssize_t ;
typedef int input_item_t ;
struct TYPE_4__ {int * p_item; } ;
typedef TYPE_1__ input_item_node_t ;


 int VLC_ENOITEM ;
 int vlc_playlist_AssertLocked (int *) ;
 int vlc_playlist_ExpandItem (int *,int,TYPE_1__*) ;
 int vlc_playlist_IndexOfMedia (int *,int *) ;

int
vlc_playlist_ExpandItemFromNode(vlc_playlist_t *playlist,
                                input_item_node_t *subitems)
{
    vlc_playlist_AssertLocked(playlist);
    input_item_t *media = subitems->p_item;
    ssize_t index = vlc_playlist_IndexOfMedia(playlist, media);
    if (index == -1)
        return VLC_ENOITEM;


    return vlc_playlist_ExpandItem(playlist, index, subitems);
}
