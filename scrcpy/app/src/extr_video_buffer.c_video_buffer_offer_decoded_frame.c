
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_buffer {int rendering_frame_consumed; int mutex; int fps_counter; int rendering_frame_consumed_cond; int interrupted; scalar_t__ render_expired_frames; } ;


 int cond_wait (int ,int ) ;
 int fps_counter_add_skipped_frame (int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int video_buffer_swap_frames (struct video_buffer*) ;

void
video_buffer_offer_decoded_frame(struct video_buffer *vb,
                                 bool *previous_frame_skipped) {
    mutex_lock(vb->mutex);
    if (vb->render_expired_frames) {

        while (!vb->rendering_frame_consumed && !vb->interrupted) {
            cond_wait(vb->rendering_frame_consumed_cond, vb->mutex);
        }
    } else if (!vb->rendering_frame_consumed) {
        fps_counter_add_skipped_frame(vb->fps_counter);
    }

    video_buffer_swap_frames(vb);

    *previous_frame_skipped = !vb->rendering_frame_consumed;
    vb->rendering_frame_consumed = 0;

    mutex_unlock(vb->mutex);
}
