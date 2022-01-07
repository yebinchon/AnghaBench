
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_14__ {TYPE_5__* sys; } ;
typedef TYPE_4__ audio_output_t ;
struct TYPE_11__ {int * p_obj; } ;
struct TYPE_12__ {TYPE_1__ bytebuffer; } ;
struct TYPE_13__ {size_t i_read; size_t i_write; size_t i_size; TYPE_2__ u; } ;
struct TYPE_15__ {int b_thread_waiting; int i_max_audiotrack_samples; scalar_t__ i_write_type; TYPE_3__ circular; int lock; int aout_cond; scalar_t__ b_error; scalar_t__ b_thread_running; int thread_cond; scalar_t__ b_thread_paused; } ;
typedef TYPE_5__ aout_sys_t ;
struct TYPE_16__ {int (* DeleteLocalRef ) (TYPE_6__**,int *) ;} ;
typedef TYPE_6__* JNIEnv ;


 int AudioTrack_Play (TYPE_6__**,TYPE_4__*,size_t,size_t,int) ;
 int FRAMES_TO_US (int) ;
 TYPE_6__** GET_ENV () ;
 scalar_t__ WRITE_BYTEARRAY ;
 scalar_t__ __MAX (int,int) ;
 size_t __MIN (size_t,size_t) ;
 int stub1 (TYPE_6__**,int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_cond_timedwait (int *,int *,scalar_t__) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static void *
AudioTrack_Thread( void *p_data )
{
    audio_output_t *p_aout = p_data;
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env = GET_ENV();
    vlc_tick_t i_play_deadline = 0;
    vlc_tick_t i_last_time_blocked = 0;

    if( !env )
        return ((void*)0);

    for( ;; )
    {
        int i_ret = 0;
        bool b_forced;
        size_t i_data_offset;
        size_t i_data_size;

        vlc_mutex_lock( &p_sys->lock );


        if( i_play_deadline != 0 && vlc_tick_now() < i_play_deadline )
        {


            p_sys->b_thread_waiting = 1;
            while( p_sys->b_thread_running && i_ret == 0 )
                i_ret = vlc_cond_timedwait( &p_sys->thread_cond,
                                            &p_sys->lock,
                                            i_play_deadline );
            i_play_deadline = 0;
            p_sys->b_thread_waiting = 0;
        }


        while( p_sys->b_thread_running && p_sys->b_thread_paused )
        {
            i_last_time_blocked = 0;
            vlc_cond_wait( &p_sys->thread_cond, &p_sys->lock );
        }


        while( p_sys->b_thread_running
            && p_sys->circular.i_read >= p_sys->circular.i_write )
            vlc_cond_wait( &p_sys->thread_cond, &p_sys->lock );

        if( !p_sys->b_thread_running || p_sys->b_error )
        {
            vlc_mutex_unlock( &p_sys->lock );
            break;
        }







        if( i_last_time_blocked != 0 )
            b_forced = vlc_tick_now() - i_last_time_blocked >
                       FRAMES_TO_US( p_sys->i_max_audiotrack_samples ) * 2;
        else
            b_forced = 0;

        i_data_offset = p_sys->circular.i_read % p_sys->circular.i_size;
        i_data_size = __MIN( p_sys->circular.i_size - i_data_offset,
                             p_sys->circular.i_write - p_sys->circular.i_read );

        i_ret = AudioTrack_Play( env, p_aout, i_data_size, i_data_offset,
                                 b_forced );
        if( i_ret >= 0 )
        {
            if( p_sys->i_write_type == WRITE_BYTEARRAY )
            {
                if( i_ret != 0 )
                    i_last_time_blocked = 0;
                else if( i_last_time_blocked == 0 )
                    i_last_time_blocked = vlc_tick_now();
            }

            if( i_ret == 0 )
                i_play_deadline = vlc_tick_now() + __MAX( 10000, FRAMES_TO_US(
                                  p_sys->i_max_audiotrack_samples / 5 ) );
            else
                p_sys->circular.i_read += i_ret;
        }

        vlc_cond_signal( &p_sys->aout_cond );
        vlc_mutex_unlock( &p_sys->lock );
    }

    if( p_sys->circular.u.bytebuffer.p_obj )
    {
        (*env)->DeleteLocalRef( env, p_sys->circular.u.bytebuffer.p_obj );
        p_sys->circular.u.bytebuffer.p_obj = ((void*)0);
    }

    return ((void*)0);
}
