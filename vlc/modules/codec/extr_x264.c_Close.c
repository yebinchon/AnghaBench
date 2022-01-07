
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ encoder_t ;
struct TYPE_5__ {scalar_t__ h; int p_sei; int psz_stat_name; } ;
typedef TYPE_2__ encoder_sys_t ;


 int free (int ) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 scalar_t__ pthread_win32_count ;
 int pthread_win32_mutex ;
 int pthread_win32_process_detach_np () ;
 int pthread_win32_thread_detach_np () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int x264_encoder_close (scalar_t__) ;
 int x264_encoder_delayed_frames (scalar_t__) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    encoder_t *p_enc = (encoder_t *)p_this;
    encoder_sys_t *p_sys = p_enc->p_sys;

    free( p_sys->psz_stat_name );
    free( p_sys->p_sei );

    if( p_sys->h )
    {
        msg_Dbg( p_enc, "framecount still in libx264 buffer: %d", x264_encoder_delayed_frames( p_sys->h ) );
        x264_encoder_close( p_sys->h );
    }
}
