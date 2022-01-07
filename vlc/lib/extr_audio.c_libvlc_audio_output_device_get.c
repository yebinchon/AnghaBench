
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;
typedef int audio_output_t ;


 int * GetAOut (int *) ;
 char* aout_DeviceGet (int *) ;
 int aout_Release (int *) ;

char *libvlc_audio_output_device_get( libvlc_media_player_t *mp )
{
    audio_output_t *aout = GetAOut( mp );
    if( aout == ((void*)0) )
        return ((void*)0);

    char *devid = aout_DeviceGet( aout );

    aout_Release(aout);

    return devid;
}
