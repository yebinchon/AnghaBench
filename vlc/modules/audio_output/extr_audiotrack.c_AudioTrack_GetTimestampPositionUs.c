
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ jlong ;
struct TYPE_8__ {TYPE_4__* sys; } ;
typedef TYPE_3__ audio_output_t ;
struct TYPE_7__ {scalar_t__ i_last_time; scalar_t__ i_frame_us; scalar_t__ i_frame_pos; scalar_t__ i_play_time; int p_obj; } ;
struct TYPE_6__ {int i_rate; } ;
struct TYPE_9__ {TYPE_2__ timestamp; TYPE_1__ fmt; } ;
typedef TYPE_4__ aout_sys_t ;
typedef int JNIEnv ;


 scalar_t__ AUDIOTIMESTAMP_INTERVAL_US ;
 scalar_t__ FRAMES_TO_US (scalar_t__) ;
 scalar_t__ JNI_AT_CALL_BOOL (int ,int ) ;
 scalar_t__ JNI_AUDIOTIMESTAMP_GET_LONG (int ) ;
 scalar_t__ VLC_TICK_FROM_NS (scalar_t__) ;
 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 int framePosition ;
 int getTimestamp ;
 int nanoTime ;
 scalar_t__ samples_from_vlc_tick (scalar_t__,int ) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static vlc_tick_t
AudioTrack_GetTimestampPositionUs( JNIEnv *env, audio_output_t *p_aout )
{
    aout_sys_t *p_sys = p_aout->sys;
    vlc_tick_t i_now;

    if( !p_sys->timestamp.p_obj )
        return 0;

    i_now = vlc_tick_now();
    if( i_now - p_sys->timestamp.i_last_time >= AUDIOTIMESTAMP_INTERVAL_US )
    {
        p_sys->timestamp.i_last_time = i_now;

        if( JNI_AT_CALL_BOOL( getTimestamp, p_sys->timestamp.p_obj ) )
        {
            p_sys->timestamp.i_frame_us = VLC_TICK_FROM_NS(JNI_AUDIOTIMESTAMP_GET_LONG( nanoTime ));
            p_sys->timestamp.i_frame_pos = JNI_AUDIOTIMESTAMP_GET_LONG( framePosition );
        }
        else
        {
            p_sys->timestamp.i_frame_us = 0;
            p_sys->timestamp.i_frame_pos = 0;
        }
    }




    if( p_sys->timestamp.i_frame_us != 0 && p_sys->timestamp.i_frame_pos != 0
     && p_sys->timestamp.i_frame_us > p_sys->timestamp.i_play_time
     && i_now > p_sys->timestamp.i_frame_us
     && ( i_now - p_sys->timestamp.i_frame_us ) <= VLC_TICK_FROM_SEC(10) )
    {
        vlc_tick_t i_time_diff = i_now - p_sys->timestamp.i_frame_us;
        jlong i_frames_diff = samples_from_vlc_tick(i_time_diff, p_sys->fmt.i_rate);
        return FRAMES_TO_US( p_sys->timestamp.i_frame_pos + i_frames_diff );
    } else
        return 0;
}
