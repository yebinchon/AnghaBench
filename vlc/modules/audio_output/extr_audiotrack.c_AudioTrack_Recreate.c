
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_10__ {int i_size; int i_format; int i_channel_config; int i_rate; } ;
struct TYPE_12__ {TYPE_1__ audiotrack_args; int * p_audiotrack; } ;
typedef TYPE_3__ aout_sys_t ;
struct TYPE_13__ {int (* DeleteGlobalRef ) (TYPE_4__**,int *) ;} ;
typedef TYPE_4__* JNIEnv ;


 int AudioTrack_New (TYPE_4__**,TYPE_2__*,int ,int ,int ,int ) ;
 int JNI_AT_CALL_VOID (int ) ;
 int release ;
 int stub1 (TYPE_4__**,int *) ;

__attribute__((used)) static int
AudioTrack_Recreate( JNIEnv *env, audio_output_t *p_aout )
{
    aout_sys_t *p_sys = p_aout->sys;

    JNI_AT_CALL_VOID( release );
    (*env)->DeleteGlobalRef( env, p_sys->p_audiotrack );
    p_sys->p_audiotrack = ((void*)0);
    return AudioTrack_New( env, p_aout, p_sys->audiotrack_args.i_rate,
                           p_sys->audiotrack_args.i_channel_config,
                           p_sys->audiotrack_args.i_format,
                           p_sys->audiotrack_args.i_size );
}
