
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int id; } ;
typedef TYPE_1__ vlc_v4l2_ctrl_t ;
struct v4l2_ext_controls {int count; struct v4l2_ext_control* controls; int error_idx; int ctrl_class; } ;
struct v4l2_ext_control {int value64; int size; int id; } ;
typedef int int64_t ;


 int V4L2_CTRL_ID2CLASS (int ) ;
 int VIDIOC_S_EXT_CTRLS ;
 scalar_t__ v4l2_ioctl (int ,int ,struct v4l2_ext_controls*) ;

__attribute__((used)) static int ControlSet64 (const vlc_v4l2_ctrl_t *c, int64_t value)
{
    struct v4l2_ext_control ext_ctrl = {
        .id = c->id,
        .size = 0,
    };
    ext_ctrl.value64 = value;
    struct v4l2_ext_controls ext_ctrls = {
        .ctrl_class = V4L2_CTRL_ID2CLASS(c->id),
        .count = 1,
        .error_idx = 0,
        .controls = &ext_ctrl,
    };

    if (v4l2_ioctl (c->fd, VIDIOC_S_EXT_CTRLS, &ext_ctrls) < 0)
        return -1;
    return 0;
}
