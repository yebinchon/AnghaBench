
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int id; } ;
typedef TYPE_1__ vlc_v4l2_ctrl_t ;
struct v4l2_control {int value; int id; } ;
typedef int int_fast32_t ;


 int VIDIOC_S_CTRL ;
 scalar_t__ v4l2_ioctl (int ,int ,struct v4l2_control*) ;

__attribute__((used)) static int ControlSet (const vlc_v4l2_ctrl_t *c, int_fast32_t value)
{
    struct v4l2_control ctrl = {
        .id = c->id,
        .value = value,
    };
    if (v4l2_ioctl (c->fd, VIDIOC_S_CTRL, &ctrl) < 0)
        return -1;
    return 0;
}
