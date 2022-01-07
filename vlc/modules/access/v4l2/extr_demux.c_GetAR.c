
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int numerator; unsigned int denominator; } ;
struct v4l2_cropcap {TYPE_1__ pixelaspect; int type; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VIDIOC_CROPCAP ;
 scalar_t__ v4l2_ioctl (int,int ,struct v4l2_cropcap*) ;

__attribute__((used)) static void GetAR (int fd, unsigned *restrict num, unsigned *restrict den)
{
    struct v4l2_cropcap cropcap = { .type = V4L2_BUF_TYPE_VIDEO_CAPTURE };


    if (v4l2_ioctl (fd, VIDIOC_CROPCAP, &cropcap) < 0)
    {
        *num = *den = 1;
        return;
    }
    *num = cropcap.pixelaspect.numerator;
    *den = cropcap.pixelaspect.denominator;
}
