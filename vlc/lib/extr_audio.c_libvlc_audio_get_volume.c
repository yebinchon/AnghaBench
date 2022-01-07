
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;
typedef int audio_output_t ;


 int * GetAOut (int *) ;
 int aout_Release (int *) ;
 float aout_VolumeGet (int *) ;
 int lroundf (float) ;

int libvlc_audio_get_volume( libvlc_media_player_t *mp )
{
    int volume = -1;

    audio_output_t *aout = GetAOut( mp );
    if( aout != ((void*)0) )
    {
        float vol = aout_VolumeGet( aout );
        aout_Release(aout);
        volume = lroundf( vol * 100.f );
    }
    return volume;
}
