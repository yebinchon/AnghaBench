
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;


 int libvlc_audio_get_mute (int *) ;
 int libvlc_audio_set_mute (int *,int) ;

void libvlc_audio_toggle_mute( libvlc_media_player_t *mp )
{
    int mute = libvlc_audio_get_mute( mp );
    if( mute != -1 )
        libvlc_audio_set_mute( mp, !mute );
}
