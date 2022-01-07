
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_list_player_t ;


 int libvlc_MediaPlayerEndReached ;
 int libvlc_event_attach (int ,int ,int ,int *) ;
 int media_player_reached_end ;
 int mplayer_em (int *) ;

__attribute__((used)) static void
install_media_player_observer(libvlc_media_list_player_t * p_mlp)
{
    libvlc_event_attach(mplayer_em(p_mlp), libvlc_MediaPlayerEndReached, media_player_reached_end, p_mlp);
}
