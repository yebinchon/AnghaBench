
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct v4l2_cropcap {int c; int defrect; int type; } ;
struct v4l2_crop {int c; int defrect; int type; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VIDIOC_CROPCAP ;
 int VIDIOC_S_CROP ;
 int errno ;
 int msg_Dbg (int *,char*,int ) ;
 int msg_Warn (int *,char*,int ) ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_cropcap*) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int ResetCrop (vlc_object_t *obj, int fd)
{
    struct v4l2_cropcap cropcap = { .type = V4L2_BUF_TYPE_VIDEO_CAPTURE };



    if (v4l2_ioctl (fd, VIDIOC_CROPCAP, &cropcap) < 0)
    {
        msg_Dbg (obj, "cannot get cropping properties: %s",
                 vlc_strerror_c(errno));
        return 0;
    }


    struct v4l2_crop crop = {
        .type = V4L2_BUF_TYPE_VIDEO_CAPTURE,
        .c = cropcap.defrect,
    };

    if (v4l2_ioctl (fd, VIDIOC_S_CROP, &crop) < 0)
    {
        msg_Warn (obj, "cannot reset cropping limits: %s",
                  vlc_strerror_c(errno));
        return -1;
    }
    return 0;
}
