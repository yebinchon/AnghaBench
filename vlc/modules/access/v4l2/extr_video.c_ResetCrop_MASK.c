#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct v4l2_cropcap {int /*<<< orphan*/  c; int /*<<< orphan*/  defrect; int /*<<< orphan*/  type; } ;
struct v4l2_crop {int /*<<< orphan*/  c; int /*<<< orphan*/  defrect; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VIDIOC_CROPCAP ; 
 int /*<<< orphan*/  VIDIOC_S_CROP ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_cropcap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (vlc_object_t *obj, int fd)
{
    struct v4l2_cropcap cropcap = { .type = V4L2_BUF_TYPE_VIDEO_CAPTURE };

    /* In theory, this ioctl() must work for all video capture devices.
     * In practice, it does not. */
    if (FUNC2 (fd, VIDIOC_CROPCAP, &cropcap) < 0)
    {
        FUNC0 (obj, "cannot get cropping properties: %s",
                 FUNC3(errno));
        return 0;
    }

    /* Reset to the default cropping rectangle */
    struct v4l2_crop crop = {
        .type = V4L2_BUF_TYPE_VIDEO_CAPTURE,
        .c = cropcap.defrect,
    };

    if (FUNC2 (fd, VIDIOC_S_CROP, &crop) < 0)
    {
        FUNC1 (obj, "cannot reset cropping limits: %s",
                  FUNC3(errno));
        return -1;
    }
    return 0;
}