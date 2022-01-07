
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_buffer {int interrupted; int rendering_frame_consumed_cond; int mutex; scalar_t__ render_expired_frames; } ;


 int cond_signal (int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

void
video_buffer_interrupt(struct video_buffer *vb) {
    if (vb->render_expired_frames) {
        mutex_lock(vb->mutex);
        vb->interrupted = 1;
        mutex_unlock(vb->mutex);

        cond_signal(vb->rendering_frame_consumed_cond);
    }
}
