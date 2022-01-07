
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;
typedef int audio_output_t ;


 int * GetAOut (int *) ;
 int aout_MuteGet (int *) ;
 int aout_Release (int *) ;

int libvlc_audio_get_mute( libvlc_media_player_t *mp )
{
    int mute = -1;

    audio_output_t *aout = GetAOut( mp );
    if( aout != ((void*)0) )
    {
        mute = aout_MuteGet( aout );
        aout_Release(aout);
    }
    return mute;
}
