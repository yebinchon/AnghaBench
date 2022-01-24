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
struct video_buffer {int rendering_frame_consumed; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fps_counter; int /*<<< orphan*/  rendering_frame_consumed_cond; int /*<<< orphan*/  interrupted; scalar_t__ render_expired_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct video_buffer*) ; 

void
FUNC5(struct video_buffer *vb,
                                 bool *previous_frame_skipped) {
    FUNC2(vb->mutex);
    if (vb->render_expired_frames) {
        // wait for the current (expired) frame to be consumed
        while (!vb->rendering_frame_consumed && !vb->interrupted) {
            FUNC0(vb->rendering_frame_consumed_cond, vb->mutex);
        }
    } else if (!vb->rendering_frame_consumed) {
        FUNC1(vb->fps_counter);
    }

    FUNC4(vb);

    *previous_frame_skipped = !vb->rendering_frame_consumed;
    vb->rendering_frame_consumed = false;

    FUNC3(vb->mutex);
}