
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;
typedef int audio_output_t ;


 int * GetAOut (int *) ;
 int VLC_VAR_STRING ;
 int aout_DeviceSet (int *,char const*) ;
 int aout_Release (int *) ;
 int asprintf (char**,char*,char const*) ;
 int free (char*) ;
 int var_Create (int *,char*,int ) ;
 int var_SetString (int *,char*,char const*) ;
 int var_Type (int *,char*) ;

void libvlc_audio_output_device_set( libvlc_media_player_t *mp,
                                     const char *module, const char *devid )
{
    if( devid == ((void*)0) )
        return;

    if( module != ((void*)0) )
    {
        char *cfg_name;

        if( asprintf( &cfg_name, "%s-audio-device", module ) == -1 )
            return;

        if( !var_Type( mp, cfg_name ) )

            var_Create( mp, cfg_name, VLC_VAR_STRING );
        var_SetString( mp, cfg_name, devid );
        free( cfg_name );
        return;
    }

    audio_output_t *aout = GetAOut( mp );
    if( aout == ((void*)0) )
        return;

    aout_DeviceSet( aout, devid );
    aout_Release(aout);
}
