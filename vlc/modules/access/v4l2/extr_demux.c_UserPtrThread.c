
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ userptr; } ;
struct v4l2_buffer {int length; TYPE_1__ m; int memory; int type; } ;
struct pollfd {int fd; int events; } ;
typedef int nfds_t ;
struct TYPE_12__ {int out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_13__ {int fd; int es; int block_flags; int blocksize; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_14__ {void* p_buffer; int i_pts; int i_flags; int i_dts; int i_buffer; } ;
typedef TYPE_4__ block_t ;


 scalar_t__ EINTR ;
 int GetBufferPTS (struct v4l2_buffer*) ;
 int POLLIN ;
 TYPE_4__* UserPtrQueue (int ,int,int ) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_MEMORY_USERPTR ;
 int VIDIOC_DQBUF ;
 int VLC_OBJECT (TYPE_2__*) ;
 int assert (int) ;
 int block_Release (TYPE_4__*) ;
 int block_cleanup_push (TYPE_4__*) ;
 scalar_t__ errno ;
 int es_out_Send (int ,int ,TYPE_4__*) ;
 int es_out_SetPCR (int ,int ) ;
 int msg_Err (TYPE_2__*,char*,int ) ;
 int poll (struct pollfd*,int,int) ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_buffer*) ;
 int vlc_cleanup_pop () ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_strerror_c (scalar_t__) ;

__attribute__((used)) static void *UserPtrThread (void *data)
{
    demux_t *demux = data;
    demux_sys_t *sys = demux->p_sys;
    int fd = sys->fd;
    struct pollfd ufd[2];
    nfds_t numfds = 1;

    ufd[0].fd = fd;
    ufd[0].events = POLLIN;

    int canc = vlc_savecancel ();
    for (;;)
    {
        struct v4l2_buffer buf = {
            .type = V4L2_BUF_TYPE_VIDEO_CAPTURE,
            .memory = V4L2_MEMORY_USERPTR,
        };
        block_t *block = UserPtrQueue (VLC_OBJECT(demux), fd, sys->blocksize);
        if (block == ((void*)0))
            break;


        vlc_restorecancel (canc);
        block_cleanup_push (block);
        while (poll (ufd, numfds, -1) == -1)
           if (errno != EINTR)
               msg_Err (demux, "poll error: %s", vlc_strerror_c(errno));
        vlc_cleanup_pop ();
        canc = vlc_savecancel ();

        if (v4l2_ioctl (fd, VIDIOC_DQBUF, &buf) < 0)
        {
            msg_Err (demux, "cannot dequeue buffer: %s",
                     vlc_strerror_c(errno));
            block_Release (block);
            continue;
        }

        assert (block->p_buffer == (void *)buf.m.userptr);
        block->i_buffer = buf.length;
        block->i_pts = block->i_dts = GetBufferPTS (&buf);
        block->i_flags |= sys->block_flags;
        es_out_SetPCR(demux->out, block->i_pts);
        es_out_Send (demux->out, sys->es, block);
    }
    vlc_restorecancel (canc);
    return ((void*)0);
}
