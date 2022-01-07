
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;
typedef int audio_output_t ;


 int * GetAOut (int *) ;
 int aout_MuteSet (int *,int) ;
 int aout_Release (int *) ;

void libvlc_audio_set_mute( libvlc_media_player_t *mp, int mute )
{
    audio_output_t *aout = GetAOut( mp );
    if( aout != ((void*)0) )
    {
        mute = aout_MuteSet( aout, mute );
        aout_Release(aout);
    }
}
