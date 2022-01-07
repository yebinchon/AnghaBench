
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_5__ {scalar_t__ i_poll_id; scalar_t__ sock; int b_interrupted; int lock; } ;
typedef TYPE_2__ sout_access_out_sys_t ;


 scalar_t__ SRT_INVALID_SOCK ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int srt_epoll_remove_usock (scalar_t__,scalar_t__) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void srt_wait_interrupted(void *p_data)
{
    sout_access_out_t *p_access = p_data;
    sout_access_out_sys_t *p_sys = p_access->p_sys;

    vlc_mutex_lock( &p_sys->lock );
    if ( p_sys->i_poll_id >= 0 && p_sys->sock != SRT_INVALID_SOCK )
    {
        p_sys->b_interrupted = 1;

        msg_Dbg( p_access, "Waking up srt_epoll_wait");



        srt_epoll_remove_usock( p_sys->i_poll_id, p_sys->sock );
    }
    vlc_mutex_unlock( &p_sys->lock );
}
