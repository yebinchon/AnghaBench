
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size_; int mux_; struct TYPE_5__* encoded_frames_; int prev_canvas_disposed_; int prev_canvas_; int curr_canvas_copy_; } ;
typedef TYPE_1__ WebPAnimEncoder ;


 int FrameRelease (TYPE_1__*) ;
 int WebPMuxDelete (int ) ;
 int WebPPictureFree (int *) ;
 int WebPSafeFree (TYPE_1__*) ;

void WebPAnimEncoderDelete(WebPAnimEncoder* enc) {
  if (enc != ((void*)0)) {
    WebPPictureFree(&enc->curr_canvas_copy_);
    WebPPictureFree(&enc->prev_canvas_);
    WebPPictureFree(&enc->prev_canvas_disposed_);
    if (enc->encoded_frames_ != ((void*)0)) {
      size_t i;
      for (i = 0; i < enc->size_; ++i) {
        FrameRelease(&enc->encoded_frames_[i]);
      }
      WebPSafeFree(enc->encoded_frames_);
    }
    WebPMuxDelete(enc->mux_);
    WebPSafeFree(enc);
  }
}
