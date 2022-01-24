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
typedef  size_t uint32_t ;
struct buffer_t {int /*<<< orphan*/  length; int /*<<< orphan*/  start; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VIDIOC_STREAMOFF ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_t*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3 (int fd, struct buffer_t *bufv, uint32_t bufc)
{
    enum v4l2_buf_type type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

    /* STREAMOFF implicitly dequeues all buffers */
    FUNC1 (fd, VIDIOC_STREAMOFF, &type);
    for (uint32_t i = 0; i < bufc; i++)
        FUNC2 (bufv[i].start, bufv[i].length);
    FUNC0 (bufv);
}