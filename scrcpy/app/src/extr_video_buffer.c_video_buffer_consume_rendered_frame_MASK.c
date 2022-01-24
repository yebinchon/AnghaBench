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
struct video_buffer {int rendering_frame_consumed; int /*<<< orphan*/  const* rendering_frame; int /*<<< orphan*/  rendering_frame_consumed_cond; scalar_t__ render_expired_frames; int /*<<< orphan*/  fps_counter; } ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

const AVFrame *
FUNC3(struct video_buffer *vb) {
    FUNC0(!vb->rendering_frame_consumed);
    vb->rendering_frame_consumed = true;
    FUNC2(vb->fps_counter);
    if (vb->render_expired_frames) {
        // unblock video_buffer_offer_decoded_frame()
        FUNC1(vb->rendering_frame_consumed_cond);
    }
    return vb->rendering_frame;
}