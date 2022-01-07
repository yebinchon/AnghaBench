
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_buffer {int decoding_frame; int rendering_frame; int mutex; int rendering_frame_consumed_cond; scalar_t__ render_expired_frames; } ;


 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;
 int av_frame_free (int *) ;

void
video_buffer_destroy(struct video_buffer *vb) {
    if (vb->render_expired_frames) {
        SDL_DestroyCond(vb->rendering_frame_consumed_cond);
    }
    SDL_DestroyMutex(vb->mutex);
    av_frame_free(&vb->rendering_frame);
    av_frame_free(&vb->decoding_frame);
}
