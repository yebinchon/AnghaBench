
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int control; int content_base; int tcp_sock; int rtcp_sock; int udp_sock; int fifo; int thread; } ;
typedef TYPE_2__ access_sys_t ;


 int block_FifoRelease (int ) ;
 int free (int ) ;
 int net_Close (int ) ;
 int satip_teardown (TYPE_1__*) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void satip_close(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    access_sys_t *sys = access->p_sys;

    vlc_cancel(sys->thread);
    vlc_join(sys->thread, ((void*)0));

    satip_teardown(access);

    block_FifoRelease(sys->fifo);
    net_Close(sys->udp_sock);
    net_Close(sys->rtcp_sock);
    net_Close(sys->tcp_sock);
    free(sys->content_base);
    free(sys->control);
}
