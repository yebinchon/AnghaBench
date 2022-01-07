
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_10__ {float volume; int * p_audiotrack; int b_error; } ;
typedef TYPE_3__ aout_sys_t ;
struct TYPE_8__ {scalar_t__ setVolume; } ;
struct TYPE_11__ {TYPE_1__ AudioTrack; } ;
typedef int JNIEnv ;


 int CHECK_AT_EXCEPTION (char*) ;
 int * GET_ENV () ;
 int JNI_AT_CALL_INT (int ,float,...) ;
 int aout_GainRequest (TYPE_2__*,float) ;
 int aout_VolumeReport (TYPE_2__*,float) ;
 TYPE_4__ jfields ;
 int setStereoVolume ;
 int setVolume ;

__attribute__((used)) static int
VolumeSet( audio_output_t *p_aout, float volume )
{
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env;
    float gain = 1.0f;

    if (volume > 1.f)
    {
        p_sys->volume = 1.f;
        gain = volume;
    }
    else
        p_sys->volume = volume;

    if( !p_sys->b_error && p_sys->p_audiotrack != ((void*)0) && ( env = GET_ENV() ) )
    {
        if( jfields.AudioTrack.setVolume )
        {
            JNI_AT_CALL_INT( setVolume, volume );
            CHECK_AT_EXCEPTION( "setVolume" );
        } else
        {
            JNI_AT_CALL_INT( setStereoVolume, volume, volume );
            CHECK_AT_EXCEPTION( "setStereoVolume" );
        }
    }
    aout_VolumeReport(p_aout, volume);
    aout_GainRequest(p_aout, gain * gain * gain);
    return 0;
}
