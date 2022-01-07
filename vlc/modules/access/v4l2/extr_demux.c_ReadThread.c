
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pollfd {int fd; scalar_t__ revents; void* events; } ;
typedef int ssize_t ;
typedef int nfds_t ;
struct TYPE_9__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_10__ {int fd; int * vbi; int es; int block_flags; int blocksize; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_11__ {int i_buffer; int i_pts; int * p_buffer; int i_flags; int i_dts; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ EINTR ;
 int GetFdVBI (int *) ;
 int GrabVBI (TYPE_1__*,int *) ;
 void* POLLIN ;
 TYPE_3__* block_Alloc (int ) ;
 int block_Release (TYPE_3__*) ;
 scalar_t__ errno ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 int poll (struct pollfd*,int,int) ;
 scalar_t__ unlikely (int ) ;
 int v4l2_read (int,int *,int) ;
 int vlc_assert_unreachable () ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_strerror_c (scalar_t__) ;
 int vlc_tick_now () ;

__attribute__((used)) static void *ReadThread (void *data)
{
    demux_t *demux = data;
    demux_sys_t *sys = demux->p_sys;
    int fd = sys->fd;
    struct pollfd ufd[2];
    nfds_t numfds = 1;

    ufd[0].fd = fd;
    ufd[0].events = POLLIN;
    for (;;)
    {

        if (poll (ufd, numfds, -1) == -1)
        {
           if (errno != EINTR)
               msg_Err (demux, "poll error: %s", vlc_strerror_c(errno));
           continue;
        }

        if( ufd[0].revents )
        {
            block_t *block = block_Alloc (sys->blocksize);
            if (unlikely(block == ((void*)0)))
            {
                msg_Err (demux, "read error: %s", vlc_strerror_c(errno));
                v4l2_read (fd, ((void*)0), 0);
                continue;
            }
            block->i_pts = block->i_dts = vlc_tick_now ();
            block->i_flags |= sys->block_flags;

            int canc = vlc_savecancel ();
            ssize_t val = v4l2_read (fd, block->p_buffer, block->i_buffer);
            if (val != -1)
            {
                block->i_buffer = val;
                es_out_SetPCR(demux->out, block->i_pts);
                es_out_Send (demux->out, sys->es, block);
            }
            else
                block_Release (block);
            vlc_restorecancel (canc);
        }




    }
    vlc_assert_unreachable ();
}
