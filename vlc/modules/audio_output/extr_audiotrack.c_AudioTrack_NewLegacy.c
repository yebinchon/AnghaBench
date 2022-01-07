
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jobject ;
typedef int jint ;
typedef int audio_output_t ;
struct TYPE_5__ {int MODE_STREAM; } ;
struct TYPE_4__ {int STREAM_MUSIC; } ;
struct TYPE_6__ {TYPE_2__ AudioTrack; TYPE_1__ AudioManager; } ;
typedef int JNIEnv ;


 int JNI_AT_NEW (int ,unsigned int,int,int,int,int ,int ) ;
 int VLC_UNUSED (int *) ;
 TYPE_3__ jfields ;

__attribute__((used)) static jobject
AudioTrack_NewLegacy( JNIEnv *env, audio_output_t *p_aout, unsigned int i_rate,
                      int i_channel_config, int i_format, int i_size,
                      jint session_id )
{
    VLC_UNUSED( p_aout );
    return JNI_AT_NEW( jfields.AudioManager.STREAM_MUSIC, i_rate,
                       i_channel_config, i_format, i_size,
                       jfields.AudioTrack.MODE_STREAM, session_id );
}
