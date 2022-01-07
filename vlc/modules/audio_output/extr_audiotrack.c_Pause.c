
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int b_thread_paused; int lock; scalar_t__ b_error; } ;
typedef TYPE_2__ aout_sys_t ;
typedef int JNIEnv ;


 int AudioTrack_ResetPositions (int *,TYPE_1__*) ;
 int CHECK_AT_EXCEPTION (char*) ;
 int * GET_ENV () ;
 int JNI_AT_CALL_VOID (int ) ;
 int VLC_UNUSED (int ) ;
 int pause ;
 int play ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void
Pause( audio_output_t *p_aout, bool b_pause, vlc_tick_t i_date )
{
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env;
    VLC_UNUSED( i_date );

    vlc_mutex_lock( &p_sys->lock );

    if( p_sys->b_error || !( env = GET_ENV() ) )
        goto bailout;

    if( b_pause )
    {
        p_sys->b_thread_paused = 1;
        JNI_AT_CALL_VOID( pause );
        CHECK_AT_EXCEPTION( "pause" );
    } else
    {
        p_sys->b_thread_paused = 0;
        AudioTrack_ResetPositions( env, p_aout );
        JNI_AT_CALL_VOID( play );
        CHECK_AT_EXCEPTION( "play" );
    }

bailout:
    vlc_mutex_unlock( &p_sys->lock );
}
