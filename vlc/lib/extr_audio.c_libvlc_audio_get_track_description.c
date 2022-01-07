
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_track_description_t ;
typedef int libvlc_media_player_t ;


 int AUDIO_ES ;
 int * libvlc_get_track_description (int *,int ) ;

libvlc_track_description_t *
        libvlc_audio_get_track_description( libvlc_media_player_t *p_mi )
{
    return libvlc_get_track_description( p_mi, AUDIO_ES );
}
