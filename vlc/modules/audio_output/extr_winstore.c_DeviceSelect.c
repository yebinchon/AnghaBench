
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_7__ {int * client; } ;
typedef TYPE_2__ aout_sys_t ;
typedef int IAudioClient ;


 int AOUT_RESTART_OUTPUT ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int aout_RestartRequest (TYPE_1__*,int ) ;
 intptr_t strtoll (char const*,char**,int) ;
 int var_SetAddress (int ,char*,int *) ;
 int vlc_object_parent (TYPE_1__*) ;

__attribute__((used)) static int DeviceSelect(audio_output_t *aout, const char* psz_device)
{
    if( psz_device == ((void*)0) )
        return VLC_EGENERIC;
    char* psz_end;
    aout_sys_t* sys = aout->sys;
    intptr_t ptr = strtoll( psz_device, &psz_end, 16 );
    if ( *psz_end != 0 )
        return VLC_EGENERIC;
    if (sys->client == (IAudioClient*)ptr)
        return VLC_SUCCESS;
    sys->client = (IAudioClient*)ptr;
    var_SetAddress( vlc_object_parent(aout), "winstore-client", sys->client );
    aout_RestartRequest( aout, AOUT_RESTART_OUTPUT );
    return VLC_SUCCESS;
}
