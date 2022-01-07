
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* sys; } ;
typedef TYPE_3__ audio_output_t ;
struct TYPE_10__ {int * p_dsbuffer; } ;
struct TYPE_9__ {float volume; int mute; scalar_t__ mb; } ;
struct TYPE_12__ {TYPE_2__ s; TYPE_1__ volume; } ;
typedef TYPE_4__ aout_sys_t ;
typedef scalar_t__ LONG ;


 scalar_t__ DSBVOLUME_MAX ;
 scalar_t__ DSBVOLUME_MIN ;
 scalar_t__ DS_OK ;
 scalar_t__ IDirectSoundBuffer_SetVolume (int *,scalar_t__) ;
 int __MIN (float,float) ;
 int aout_GainRequest (TYPE_3__*,float) ;
 int aout_VolumeReport (TYPE_3__*,float) ;
 int config_PutFloat (char*,float) ;
 float log10f (int ) ;
 scalar_t__ lroundf (float) ;
 int static_assert (int,char*) ;
 scalar_t__ var_InheritBool (TYPE_3__*,char*) ;

__attribute__((used)) static int VolumeSet( audio_output_t *p_aout, float volume )
{
    aout_sys_t *sys = p_aout->sys;
    int ret = 0;



    float gain = volume > 1.f ? volume * volume * volume : 1.f;
    aout_GainRequest( p_aout, gain );


    LONG mb = lroundf( 6000.f * log10f( __MIN( volume, 1.f ) ));


    static_assert( DSBVOLUME_MIN < DSBVOLUME_MAX, "DSBVOLUME_* confused" );
    if( mb > DSBVOLUME_MAX )
    {
        mb = DSBVOLUME_MAX;
        ret = -1;
    }
    if( mb <= DSBVOLUME_MIN )
        mb = DSBVOLUME_MIN;

    sys->volume.mb = mb;
    sys->volume.volume = volume;
    if( !sys->volume.mute && sys->s.p_dsbuffer != ((void*)0) &&
        IDirectSoundBuffer_SetVolume( sys->s.p_dsbuffer, mb ) != DS_OK )
        return -1;

    aout_VolumeReport( p_aout, volume );

    if( var_InheritBool( p_aout, "volume-save" ) )
        config_PutFloat( "directx-volume", volume );
    return ret;
}
