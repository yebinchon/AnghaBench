
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;
typedef int libvlc_audio_set_volume_cb ;


 int var_SetAddress (int *,char*,int ) ;

void libvlc_audio_set_volume_callback( libvlc_media_player_t *mp,
                                       libvlc_audio_set_volume_cb cb )
{
    var_SetAddress( mp, "amem-set-volume", cb );
}
