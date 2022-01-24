#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ vlc_v4l2_ctrl_t ;
struct v4l2_ext_controls {int count; struct v4l2_ext_control* controls; int /*<<< orphan*/  error_idx; int /*<<< orphan*/  ctrl_class; } ;
struct v4l2_ext_control {char* string; int /*<<< orphan*/  size; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDIOC_S_EXT_CTRLS ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_ext_controls*) ; 

__attribute__((used)) static int FUNC3 (const vlc_v4l2_ctrl_t *c, const char *restrict value)
{
    struct v4l2_ext_control ext_ctrl = {
        .id = c->id,
        .size = FUNC1 (value) + 1,
    };
    ext_ctrl.string = (char *)value;
    struct v4l2_ext_controls ext_ctrls = {
        .ctrl_class = FUNC0(c->id),
        .count = 1,
        .error_idx = 0,
        .controls = &ext_ctrl,
    };

    if (FUNC2 (c->fd, VIDIOC_S_EXT_CTRLS, &ext_ctrls) < 0)
        return -1;
    return 0;
}