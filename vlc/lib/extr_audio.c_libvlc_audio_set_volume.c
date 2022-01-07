
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;
typedef int audio_output_t ;


 int * GetAOut (int *) ;
 int aout_Release (int *) ;
 int aout_VolumeSet (int *,float) ;
 int isgreaterequal (float,float) ;
 int libvlc_printerr (char*) ;

int libvlc_audio_set_volume( libvlc_media_player_t *mp, int volume )
{
    float vol = volume / 100.f;
    if (!isgreaterequal(vol, 0.f))
    {
        libvlc_printerr( "Volume out of range" );
        return -1;
    }

    int ret = -1;
    audio_output_t *aout = GetAOut( mp );
    if( aout != ((void*)0) )
    {
        ret = aout_VolumeSet( aout, vol );
        aout_Release(aout);
    }
    return ret;
}
