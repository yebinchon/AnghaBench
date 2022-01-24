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
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct v4l2_buffer {int flags; int /*<<< orphan*/  timestamp; } ;

/* Variables and functions */
 int V4L2_BUF_FLAG_TIMESTAMP_MASK ; 
#define  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC 129 
#define  V4L2_BUF_FLAG_TIMESTAMP_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

vlc_tick_t FUNC2 (const struct v4l2_buffer *buf)
{
    vlc_tick_t pts;

    switch (buf->flags & V4L2_BUF_FLAG_TIMESTAMP_MASK)
    {
        case V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC:
            pts = FUNC0( &buf->timestamp );
            break;
        case V4L2_BUF_FLAG_TIMESTAMP_UNKNOWN:
        default:
            pts = FUNC1 ();
            break;
    }
    return pts;
}