
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int VLC_UNUSED (int *) ;
 int vlc_playlist_ExpandItemFromNode (int *,int *) ;

__attribute__((used)) static void
on_player_media_subitems_changed(vlc_player_t *player, input_item_t *media,
                                 input_item_node_t *subitems, void *userdata)
{
    VLC_UNUSED(player);
    VLC_UNUSED(media);
    vlc_playlist_t *playlist = userdata;
    vlc_playlist_ExpandItemFromNode(playlist, subitems);
}
