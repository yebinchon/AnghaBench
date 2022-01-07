
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_5__ {int i_last; scalar_t__ i_wrap_count; } ;
struct TYPE_7__ {TYPE_1__ headpos; } ;
typedef TYPE_3__ aout_sys_t ;
typedef int JNIEnv ;


 int JNI_AT_CALL_INT (int ) ;
 int getPlaybackHeadPosition ;

__attribute__((used)) static uint64_t
AudioTrack_getPlaybackHeadPosition( JNIEnv *env, audio_output_t *p_aout )
{
    aout_sys_t *p_sys = p_aout->sys;
    uint32_t i_pos;


    i_pos = 0xFFFFFFFFL & JNI_AT_CALL_INT( getPlaybackHeadPosition );


    if( p_sys->headpos.i_last > i_pos )
        p_sys->headpos.i_wrap_count++;
    p_sys->headpos.i_last = i_pos;
    return p_sys->headpos.i_last + ((uint64_t)p_sys->headpos.i_wrap_count << 32);
}
