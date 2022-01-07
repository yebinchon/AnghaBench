
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ssize_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_11__ {int fd; int session; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_12__ {int i_buffer; int * p_buffer; } ;
typedef TYPE_3__ block_t ;


 int MSG_WAITALL ;
 TYPE_3__* block_Alloc (int ) ;
 int block_Release (TYPE_3__*) ;
 int block_cleanup_push (TYPE_3__*) ;
 int ntohs (int ) ;
 int recv (int,int *,int,int ) ;
 int rtp_dequeue_force (TYPE_1__*,int ) ;
 int rtp_process (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_cleanup_pop () ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

void *rtp_stream_thread (void *opaque)
{

    demux_t *demux = opaque;
    demux_sys_t *sys = demux->p_sys;
    int fd = sys->fd;

    for (;;)
    {

        ssize_t val;

        uint16_t frame_len;
        if (recv (fd, &frame_len, 2, MSG_WAITALL) != 2)
            break;

        block_t *block = block_Alloc (ntohs (frame_len));
        if (unlikely(block == ((void*)0)))
            break;

        block_cleanup_push (block);
        val = recv (fd, block->p_buffer, block->i_buffer, MSG_WAITALL);
        vlc_cleanup_pop ();

        if (val != (ssize_t)block->i_buffer)
        {
            block_Release (block);
            break;
        }

        int canc = vlc_savecancel ();
        rtp_process (demux, block);
        rtp_dequeue_force (demux, sys->session);
        vlc_restorecancel (canc);
    }



    return ((void*)0);
}
