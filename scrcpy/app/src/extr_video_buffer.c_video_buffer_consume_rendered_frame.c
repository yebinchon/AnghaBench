
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_buffer {int rendering_frame_consumed; int const* rendering_frame; int rendering_frame_consumed_cond; scalar_t__ render_expired_frames; int fps_counter; } ;
typedef int AVFrame ;


 int SDL_assert (int) ;
 int cond_signal (int ) ;
 int fps_counter_add_rendered_frame (int ) ;

const AVFrame *
video_buffer_consume_rendered_frame(struct video_buffer *vb) {
    SDL_assert(!vb->rendering_frame_consumed);
    vb->rendering_frame_consumed = 1;
    fps_counter_add_rendered_frame(vb->fps_counter);
    if (vb->render_expired_frames) {

        cond_signal(vb->rendering_frame_consumed_cond);
    }
    return vb->rendering_frame;
}
