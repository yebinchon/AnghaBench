
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct v4l2_buffer {size_t index; int bytesused; int memory; int type; } ;
struct buffer_t {int start; } ;
struct TYPE_5__ {int p_buffer; int i_dts; int i_pts; } ;
typedef TYPE_1__ block_t ;




 int GetBufferPTS (struct v4l2_buffer*) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_MEMORY_MMAP ;
 int VIDIOC_DQBUF ;
 int VIDIOC_QBUF ;
 TYPE_1__* block_Alloc (int ) ;
 int block_Release (TYPE_1__*) ;
 int errno ;
 int memcpy (int ,int ,int ) ;
 int msg_Err (int *,char*,int ) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_buffer*) ;
 int vlc_strerror_c (int) ;

block_t *GrabVideo (vlc_object_t *demux, int fd,
                    const struct buffer_t *restrict bufv)
{
    struct v4l2_buffer buf = {
        .type = V4L2_BUF_TYPE_VIDEO_CAPTURE,
        .memory = V4L2_MEMORY_MMAP,
    };


    if (v4l2_ioctl (fd, VIDIOC_DQBUF, &buf) < 0)
    {
        switch (errno)
        {
            case 129:
                return ((void*)0);
            case 128:


            default:
                msg_Err (demux, "dequeue error: %s", vlc_strerror_c(errno));
                return ((void*)0);
        }
    }


    block_t *block = block_Alloc (buf.bytesused);
    if (unlikely(block == ((void*)0)))
        return ((void*)0);
    block->i_pts = block->i_dts = GetBufferPTS (&buf);
    memcpy (block->p_buffer, bufv[buf.index].start, buf.bytesused);


    if (v4l2_ioctl (fd, VIDIOC_QBUF, &buf) < 0)
    {
        msg_Err (demux, "queue error: %s", vlc_strerror_c(errno));
        block_Release (block);
        return ((void*)0);
    }
    return block;
}
