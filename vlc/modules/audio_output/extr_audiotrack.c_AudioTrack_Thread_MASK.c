#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_14__ {TYPE_5__* sys; } ;
typedef  TYPE_4__ audio_output_t ;
struct TYPE_11__ {int /*<<< orphan*/ * p_obj; } ;
struct TYPE_12__ {TYPE_1__ bytebuffer; } ;
struct TYPE_13__ {size_t i_read; size_t i_write; size_t i_size; TYPE_2__ u; } ;
struct TYPE_15__ {int b_thread_waiting; int i_max_audiotrack_samples; scalar_t__ i_write_type; TYPE_3__ circular; int /*<<< orphan*/  lock; int /*<<< orphan*/  aout_cond; scalar_t__ b_error; scalar_t__ b_thread_running; int /*<<< orphan*/  thread_cond; scalar_t__ b_thread_paused; } ;
typedef  TYPE_5__ aout_sys_t ;
struct TYPE_16__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_6__**,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_6__* JNIEnv ;

/* Variables and functions */
 int FUNC0 (TYPE_6__**,TYPE_4__*,size_t,size_t,int) ; 
 int FUNC1 (int) ; 
 TYPE_6__** FUNC2 () ; 
 scalar_t__ WRITE_BYTEARRAY ; 
 scalar_t__ FUNC3 (int,int) ; 
 size_t FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 () ; 

__attribute__((used)) static void *
FUNC12( void *p_data )
{
    audio_output_t *p_aout = p_data;
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env = FUNC2();
    vlc_tick_t i_play_deadline = 0;
    vlc_tick_t i_last_time_blocked = 0;

    if( !env )
        return NULL;

    for( ;; )
    {
        int i_ret = 0;
        bool b_forced;
        size_t i_data_offset;
        size_t i_data_size;

        FUNC9( &p_sys->lock );

        /* Wait for free space in Audiotrack internal buffer */
        if( i_play_deadline != 0 && FUNC11() < i_play_deadline )
        {
            /* Don't wake up the thread when there is new data since we are
             * waiting for more space */
            p_sys->b_thread_waiting = true;
            while( p_sys->b_thread_running && i_ret == 0 )
                i_ret = FUNC7( &p_sys->thread_cond,
                                            &p_sys->lock,
                                            i_play_deadline );
            i_play_deadline = 0;
            p_sys->b_thread_waiting = false;
        }

        /* Wait for not paused state */
        while( p_sys->b_thread_running && p_sys->b_thread_paused )
        {
            i_last_time_blocked = 0;
            FUNC8( &p_sys->thread_cond, &p_sys->lock );
        }

        /* Wait for more data in the circular buffer */
        while( p_sys->b_thread_running
            && p_sys->circular.i_read >= p_sys->circular.i_write )
            FUNC8( &p_sys->thread_cond, &p_sys->lock );

        if( !p_sys->b_thread_running || p_sys->b_error )
        {
            FUNC10( &p_sys->lock );
            break;
        }

        /* HACK: AudioFlinger can drop frames without notifying us and there is
         * no way to know it. If it happens, i_audiotrack_pos won't move and
         * the current code will be stuck because it'll assume that audiotrack
         * internal buffer is full when it's not. It may happen only after
         * Android 4.4.2 if we send frames too quickly. To fix this issue,
         * force the writing of the buffer after a certain delay. */
        if( i_last_time_blocked != 0 )
            b_forced = FUNC11() - i_last_time_blocked >
                       FUNC1( p_sys->i_max_audiotrack_samples ) * 2;
        else
            b_forced = false;

        i_data_offset = p_sys->circular.i_read % p_sys->circular.i_size;
        i_data_size = FUNC4( p_sys->circular.i_size - i_data_offset,
                             p_sys->circular.i_write - p_sys->circular.i_read );

        i_ret = FUNC0( env, p_aout, i_data_size, i_data_offset,
                                 b_forced );
        if( i_ret >= 0 )
        {
            if( p_sys->i_write_type == WRITE_BYTEARRAY )
            {
                if( i_ret != 0 )
                    i_last_time_blocked = 0;
                else if( i_last_time_blocked == 0 )
                    i_last_time_blocked = FUNC11();
            }

            if( i_ret == 0 )
                i_play_deadline = FUNC11() + FUNC3( 10000, FUNC1(
                                  p_sys->i_max_audiotrack_samples / 5 ) );
            else
                p_sys->circular.i_read += i_ret;
        }

        FUNC6( &p_sys->aout_cond );
        FUNC10( &p_sys->lock );
    }

    if( p_sys->circular.u.bytebuffer.p_obj )
    {
        (*env)->DeleteLocalRef( env, p_sys->circular.u.bytebuffer.p_obj );
        p_sys->circular.u.bytebuffer.p_obj = NULL;
    }

    return NULL;
}