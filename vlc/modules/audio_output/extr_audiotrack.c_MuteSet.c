
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_9__ {int mute; float volume; int * p_audiotrack; int b_error; } ;
typedef TYPE_3__ aout_sys_t ;
struct TYPE_7__ {scalar_t__ setVolume; } ;
struct TYPE_10__ {TYPE_1__ AudioTrack; } ;
typedef int JNIEnv ;


 int CHECK_AT_EXCEPTION (char*) ;
 int * GET_ENV () ;
 int JNI_AT_CALL_INT (int ,float,...) ;
 int aout_MuteReport (TYPE_2__*,int) ;
 TYPE_4__ jfields ;
 int setStereoVolume ;
 int setVolume ;

__attribute__((used)) static int
MuteSet( audio_output_t *p_aout, bool mute )
{
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env;
    p_sys->mute = mute;

    if( !p_sys->b_error && p_sys->p_audiotrack != ((void*)0) && ( env = GET_ENV() ) )
    {
        if( jfields.AudioTrack.setVolume )
        {
            JNI_AT_CALL_INT( setVolume, mute ? 0.0f : p_sys->volume );
            CHECK_AT_EXCEPTION( "setVolume" );
        } else
        {
            JNI_AT_CALL_INT( setStereoVolume, mute ? 0.0f : p_sys->volume, mute ? 0.0f : p_sys->volume );
            CHECK_AT_EXCEPTION( "setStereoVolume" );
        }
    }
    aout_MuteReport(p_aout, mute);
    return 0;
}
