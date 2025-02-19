
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_11__ {TYPE_4__* sys; } ;
typedef TYPE_3__ audio_output_t ;
struct TYPE_9__ {int p_bytearray; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
struct TYPE_12__ {scalar_t__ i_samples_written; int b_error; scalar_t__ i_max_audiotrack_samples; TYPE_2__ circular; } ;
typedef TYPE_4__ aout_sys_t ;
typedef int JNIEnv ;


 scalar_t__ AudioTrack_getPlaybackHeadPosition (int *,TYPE_3__*) ;
 int BYTES_TO_FRAMES (size_t) ;
 size_t FRAMES_TO_BYTES (scalar_t__) ;
 int JNI_AT_CALL_INT (int ,int ,size_t,size_t) ;
 scalar_t__ __MIN (scalar_t__,int ) ;
 int assert (int) ;
 int msg_Err (TYPE_3__*,char*) ;
 int msg_Warn (TYPE_3__*,char*) ;
 int write ;

__attribute__((used)) static int
AudioTrack_PlayByteArray( JNIEnv *env, audio_output_t *p_aout,
                          size_t i_data_size, size_t i_data_offset,
                          bool b_force )
{
    aout_sys_t *p_sys = p_aout->sys;
    uint64_t i_samples;
    uint64_t i_audiotrack_pos;
    uint64_t i_samples_pending;

    i_audiotrack_pos = AudioTrack_getPlaybackHeadPosition( env, p_aout );

    assert( i_audiotrack_pos <= p_sys->i_samples_written );
    if( i_audiotrack_pos > p_sys->i_samples_written )
    {
        msg_Err( p_aout, "audiotrack position is ahead. Should NOT happen" );
        p_sys->i_samples_written = 0;
        p_sys->b_error = 1;
        return 0;
    }
    i_samples_pending = p_sys->i_samples_written - i_audiotrack_pos;


    if( b_force )
    {
        msg_Warn( p_aout, "Force write. It may block..." );
        i_samples_pending = 0;
    } else if( i_samples_pending >= p_sys->i_max_audiotrack_samples )
        return 0;

    i_samples = __MIN( p_sys->i_max_audiotrack_samples - i_samples_pending,
                       BYTES_TO_FRAMES( i_data_size ) );

    i_data_size = FRAMES_TO_BYTES( i_samples );

    return JNI_AT_CALL_INT( write, p_sys->circular.u.p_bytearray,
                            i_data_offset, i_data_size );
}
