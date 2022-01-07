
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pollfd {int fd; scalar_t__ revents; void* events; } ;
typedef int nfds_t ;
struct TYPE_9__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_10__ {int fd; int * vbi; int es; int block_flags; int bufv; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_11__ {int i_pts; int i_flags; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ EINTR ;
 int GetFdVBI (int *) ;
 int GrabVBI (TYPE_1__*,int *) ;
 TYPE_3__* GrabVideo (int ,int,int ) ;
 void* POLLIN ;
 int VLC_OBJECT (TYPE_1__*) ;
 scalar_t__ errno ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 int poll (struct pollfd*,int,int) ;
 int vlc_assert_unreachable () ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_strerror_c (scalar_t__) ;

__attribute__((used)) static void *MmapThread (void *data)
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
            int canc = vlc_savecancel ();
            block_t *block = GrabVideo (VLC_OBJECT(demux), fd, sys->bufv);
            if (block != ((void*)0))
            {
                block->i_flags |= sys->block_flags;
                es_out_SetPCR(demux->out, block->i_pts);
                es_out_Send (demux->out, sys->es, block);
            }
            vlc_restorecancel (canc);
        }




    }

    vlc_assert_unreachable ();
}
