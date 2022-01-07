
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct buffer_t {int length; int start; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VIDIOC_STREAMOFF ;
 int free (struct buffer_t*) ;
 int v4l2_ioctl (int,int ,int*) ;
 int v4l2_munmap (int ,int ) ;

void StopMmap (int fd, struct buffer_t *bufv, uint32_t bufc)
{
    enum v4l2_buf_type type = V4L2_BUF_TYPE_VIDEO_CAPTURE;


    v4l2_ioctl (fd, VIDIOC_STREAMOFF, &type);
    for (uint32_t i = 0; i < bufc; i++)
        v4l2_munmap (bufv[i].start, bufv[i].length);
    free (bufv);
}
