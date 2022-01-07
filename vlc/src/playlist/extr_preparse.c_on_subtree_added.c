
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int VLC_UNUSED (int *) ;
 int vlc_playlist_ExpandItemFromNode (int *,int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static void
on_subtree_added(input_item_t *media, input_item_node_t *subtree,
                 void *userdata)
{
    VLC_UNUSED(media);
    vlc_playlist_t *playlist = userdata;

    vlc_playlist_Lock(playlist);
    vlc_playlist_ExpandItemFromNode(playlist, subtree);
    vlc_playlist_Unlock(playlist);
}
