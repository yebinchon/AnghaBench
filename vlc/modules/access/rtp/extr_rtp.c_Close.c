
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {int rtcp_fd; int fd; scalar_t__ session; scalar_t__ srtp; int thread; scalar_t__ thread_ready; } ;
typedef TYPE_2__ demux_sys_t ;


 int free (TYPE_2__*) ;
 int net_Close (int) ;
 int rtp_session_destroy (TYPE_1__*,scalar_t__) ;
 int srtp_destroy (scalar_t__) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    demux_sys_t *p_sys = demux->p_sys;

    if (p_sys->thread_ready)
    {
        vlc_cancel (p_sys->thread);
        vlc_join (p_sys->thread, ((void*)0));
    }





    if (p_sys->session)
        rtp_session_destroy (demux, p_sys->session);
    if (p_sys->rtcp_fd != -1)
        net_Close (p_sys->rtcp_fd);
    net_Close (p_sys->fd);
    free (p_sys);
}
