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
struct video_buffer {int /*<<< orphan*/  decoding_frame; int /*<<< orphan*/  rendering_frame; int /*<<< orphan*/  mutex; int /*<<< orphan*/  rendering_frame_consumed_cond; scalar_t__ render_expired_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct video_buffer *vb) {
    if (vb->render_expired_frames) {
        FUNC0(vb->rendering_frame_consumed_cond);
    }
    FUNC1(vb->mutex);
    FUNC2(&vb->rendering_frame);
    FUNC2(&vb->decoding_frame);
}