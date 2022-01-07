
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_19__ {scalar_t__ width; scalar_t__ height; int use_argb; void* error_code; } ;
typedef TYPE_2__ WebPPicture ;
struct TYPE_20__ {int lossless; } ;
typedef TYPE_3__ WebPConfig ;
struct TYPE_18__ {scalar_t__ verbose; } ;
struct TYPE_21__ {int prev_timestamp_; int first_timestamp_; int got_null_frame_; scalar_t__ canvas_width_; scalar_t__ canvas_height_; int curr_canvas_copy_modified_; TYPE_2__* curr_canvas_; TYPE_1__ options_; int is_first_frame_; } ;
typedef TYPE_4__ WebPAnimEncoder ;


 scalar_t__ CacheFrame (TYPE_4__*,TYPE_3__*) ;
 int CopyCurrentCanvas (TYPE_4__*) ;
 scalar_t__ FlushFrames (TYPE_4__*) ;
 int IncreasePreviousDuration (TYPE_4__*,int) ;
 scalar_t__ const MAX_DURATION ;
 int MarkError (TYPE_4__*,char*) ;
 int MarkNoError (TYPE_4__*) ;
 void* VP8_ENC_ERROR_INVALID_CONFIGURATION ;
 int WebPConfigInit (TYPE_3__*) ;
 int WebPPictureYUVAToARGB (TYPE_2__*) ;
 int WebPValidateConfig (TYPE_3__ const*) ;
 int assert (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

int WebPAnimEncoderAdd(WebPAnimEncoder* enc, WebPPicture* frame, int timestamp,
                       const WebPConfig* encoder_config) {
  WebPConfig config;
  int ok;

  if (enc == ((void*)0)) {
    return 0;
  }
  MarkNoError(enc);

  if (!enc->is_first_frame_) {

    const uint32_t prev_frame_duration =
        (uint32_t)timestamp - enc->prev_timestamp_;
    if (prev_frame_duration >= MAX_DURATION) {
      if (frame != ((void*)0)) {
        frame->error_code = VP8_ENC_ERROR_INVALID_CONFIGURATION;
      }
      MarkError(enc, "ERROR adding frame: timestamps must be non-decreasing");
      return 0;
    }
    if (!IncreasePreviousDuration(enc, (int)prev_frame_duration)) {
      return 0;
    }
  } else {
    enc->first_timestamp_ = timestamp;
  }

  if (frame == ((void*)0)) {
    enc->got_null_frame_ = 1;
    enc->prev_timestamp_ = timestamp;
    return 1;
  }

  if (frame->width != enc->canvas_width_ ||
      frame->height != enc->canvas_height_) {
    frame->error_code = VP8_ENC_ERROR_INVALID_CONFIGURATION;
    MarkError(enc, "ERROR adding frame: Invalid frame dimensions");
    return 0;
  }

  if (!frame->use_argb) {
    if (enc->options_.verbose) {
      fprintf(stderr, "WARNING: Converting frame from YUV(A) to ARGB format; "
              "this incurs a small loss.\n");
    }
    if (!WebPPictureYUVAToARGB(frame)) {
      MarkError(enc, "ERROR converting frame from YUV(A) to ARGB");
      return 0;
    }
  }

  if (encoder_config != ((void*)0)) {
    if (!WebPValidateConfig(encoder_config)) {
      MarkError(enc, "ERROR adding frame: Invalid WebPConfig");
      return 0;
    }
    config = *encoder_config;
  } else {
    WebPConfigInit(&config);
    config.lossless = 1;
  }
  assert(enc->curr_canvas_ == ((void*)0));
  enc->curr_canvas_ = frame;
  assert(enc->curr_canvas_copy_modified_ == 1);
  CopyCurrentCanvas(enc);

  ok = CacheFrame(enc, &config) && FlushFrames(enc);

  enc->curr_canvas_ = ((void*)0);
  enc->curr_canvas_copy_modified_ = 1;
  if (ok) {
    enc->prev_timestamp_ = timestamp;
  }
  return ok;
}
