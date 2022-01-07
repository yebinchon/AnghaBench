
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_5__ {scalar_t__ i_wrap_count; scalar_t__ i_last; } ;
struct TYPE_7__ {TYPE_1__ headpos; } ;
typedef TYPE_3__ aout_sys_t ;
typedef int JNIEnv ;



__attribute__((used)) static void
AudioTrack_ResetPlaybackHeadPosition( JNIEnv *env, audio_output_t *p_aout )
{
    (void) env;
    aout_sys_t *p_sys = p_aout->sys;

    p_sys->headpos.i_last = 0;
    p_sys->headpos.i_wrap_count = 0;
}
