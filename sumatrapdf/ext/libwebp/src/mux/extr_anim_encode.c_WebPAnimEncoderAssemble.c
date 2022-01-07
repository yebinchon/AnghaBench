
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef double uint32_t ;
typedef scalar_t__ WebPMuxError ;
typedef int WebPMux ;
typedef int WebPData ;
struct TYPE_10__ {int anim_params; } ;
struct TYPE_11__ {int in_frame_count_; scalar_t__ count_; double first_timestamp_; scalar_t__ flush_count_; int out_frame_count_; TYPE_1__ options_; int canvas_height_; int canvas_width_; int * mux_; scalar_t__ prev_timestamp_; int got_null_frame_; } ;
typedef TYPE_2__ WebPAnimEncoder ;


 int FlushFrames (TYPE_2__*) ;
 int IncreasePreviousDuration (TYPE_2__*,int const) ;
 int MarkError (TYPE_2__*,char*) ;
 int MarkError2 (TYPE_2__*,char*,scalar_t__) ;
 int MarkNoError (TYPE_2__*) ;
 scalar_t__ OptimizeSingleFrame (TYPE_2__*,int *) ;
 scalar_t__ WEBP_MUX_OK ;
 scalar_t__ WebPMuxAssemble (int *,int *) ;
 scalar_t__ WebPMuxSetAnimationParams (int *,int *) ;
 scalar_t__ WebPMuxSetCanvasSize (int *,int ,int ) ;

int WebPAnimEncoderAssemble(WebPAnimEncoder* enc, WebPData* webp_data) {
  WebPMux* mux;
  WebPMuxError err;

  if (enc == ((void*)0)) {
    return 0;
  }
  MarkNoError(enc);

  if (webp_data == ((void*)0)) {
    MarkError(enc, "ERROR assembling: NULL input");
    return 0;
  }

  if (enc->in_frame_count_ == 0) {
    MarkError(enc, "ERROR: No frames to assemble");
    return 0;
  }

  if (!enc->got_null_frame_ && enc->in_frame_count_ > 1 && enc->count_ > 0) {

    const double delta_time =
        (uint32_t)enc->prev_timestamp_ - enc->first_timestamp_;
    const int average_duration = (int)(delta_time / (enc->in_frame_count_ - 1));
    if (!IncreasePreviousDuration(enc, average_duration)) {
      return 0;
    }
  }


  enc->flush_count_ = enc->count_;
  if (!FlushFrames(enc)) {
    return 0;
  }


  mux = enc->mux_;
  err = WebPMuxSetCanvasSize(mux, enc->canvas_width_, enc->canvas_height_);
  if (err != WEBP_MUX_OK) goto Err;

  err = WebPMuxSetAnimationParams(mux, &enc->options_.anim_params);
  if (err != WEBP_MUX_OK) goto Err;


  err = WebPMuxAssemble(mux, webp_data);
  if (err != WEBP_MUX_OK) goto Err;

  if (enc->out_frame_count_ == 1) {
    err = OptimizeSingleFrame(enc, webp_data);
    if (err != WEBP_MUX_OK) goto Err;
  }
  return 1;

 Err:
  MarkError2(enc, "ERROR assembling WebP", err);
  return 0;
}
