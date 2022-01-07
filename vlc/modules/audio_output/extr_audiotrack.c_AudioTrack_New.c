
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


typedef int jobject ;
typedef int jint ;
struct TYPE_20__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_21__ {int p_audiotrack; } ;
typedef TYPE_3__ aout_sys_t ;
struct TYPE_22__ {int (* DeleteLocalRef ) (TYPE_4__**,int ) ;int (* NewGlobalRef ) (TYPE_4__**,int ) ;} ;
struct TYPE_19__ {scalar_t__ STATE_INITIALIZED; int release; int getState; scalar_t__ has_ctor_21; } ;
struct TYPE_18__ {TYPE_1__ AudioTrack; } ;
typedef TYPE_4__* JNIEnv ;


 int AudioTrack_New21 (TYPE_4__**,TYPE_2__*,unsigned int,int,int,int,int ) ;
 int AudioTrack_NewLegacy (TYPE_4__**,TYPE_2__*,unsigned int,int,int,int,int ) ;
 scalar_t__ CHECK_AT_EXCEPTION (char*) ;
 scalar_t__ JNI_CALL_INT (int ,int ) ;
 int JNI_CALL_VOID (int ,int ) ;
 TYPE_11__ jfields ;
 int msg_Err (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int stub1 (TYPE_4__**,int ) ;
 int stub2 (TYPE_4__**,int ) ;
 int stub3 (TYPE_4__**,int ) ;
 int var_InheritInteger (TYPE_2__*,char*) ;

__attribute__((used)) static int
AudioTrack_New( JNIEnv *env, audio_output_t *p_aout, unsigned int i_rate,
                int i_channel_config, int i_format, int i_size )
{
    aout_sys_t *p_sys = p_aout->sys;
    jint session_id = var_InheritInteger( p_aout, "audiotrack-session-id" );

    jobject p_audiotrack;
    if( jfields.AudioTrack.has_ctor_21 )
        p_audiotrack = AudioTrack_New21( env, p_aout, i_rate, i_channel_config,
                                         i_format, i_size, session_id );
    else
        p_audiotrack = AudioTrack_NewLegacy( env, p_aout, i_rate,
                                             i_channel_config, i_format, i_size,
                                             session_id );
    if( CHECK_AT_EXCEPTION( "AudioTrack<init>" ) || !p_audiotrack )
    {
        msg_Warn( p_aout, "AudioTrack Init failed" );
        return -1;
    }
    if( JNI_CALL_INT( p_audiotrack, jfields.AudioTrack.getState )
        != jfields.AudioTrack.STATE_INITIALIZED )
    {
        JNI_CALL_VOID( p_audiotrack, jfields.AudioTrack.release );
        (*env)->DeleteLocalRef( env, p_audiotrack );
        msg_Err( p_aout, "AudioTrack getState failed" );
        return -1;
    }

    p_sys->p_audiotrack = (*env)->NewGlobalRef( env, p_audiotrack );
    (*env)->DeleteLocalRef( env, p_audiotrack );
    if( !p_sys->p_audiotrack )
        return -1;

    return 0;
}
