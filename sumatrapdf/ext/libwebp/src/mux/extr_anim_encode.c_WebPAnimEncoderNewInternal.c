
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
typedef int WebPAnimEncoderOptions ;
struct TYPE_12__ {int kmax; int kmin; } ;
struct TYPE_14__ {int width; int height; int use_argb; } ;
struct TYPE_13__ {int curr_canvas_copy_modified_; int size_; int is_first_frame_; scalar_t__ got_null_frame_; scalar_t__ prev_candidate_undecided_; scalar_t__ prev_timestamp_; scalar_t__ first_timestamp_; scalar_t__ count_since_key_frame_; int * mux_; int * encoded_frames_; TYPE_1__ options_; TYPE_3__ prev_canvas_; TYPE_3__ prev_canvas_disposed_; TYPE_3__ curr_canvas_copy_; int canvas_height_; int canvas_width_; } ;
typedef TYPE_2__ WebPAnimEncoder ;
typedef int EncodedFrame ;


 int DefaultEncoderOptions (int *) ;
 int MAX_IMAGE_AREA ;
 int MarkNoError (TYPE_2__*) ;
 int ResetCounters (TYPE_2__*) ;
 int SanitizeEncoderOptions (int *) ;
 scalar_t__ WEBP_ABI_IS_INCOMPATIBLE (int,int ) ;
 int WEBP_MUX_ABI_VERSION ;
 int WebPAnimEncoderDelete (TYPE_2__*) ;
 int * WebPMuxNew () ;
 int WebPPictureAlloc (TYPE_3__*) ;
 int WebPPictureCopy (TYPE_3__*,TYPE_3__*) ;
 int WebPPictureInit (TYPE_3__*) ;
 scalar_t__ WebPSafeCalloc (int,int) ;
 int WebPUtilClearPic (TYPE_3__*,int *) ;

WebPAnimEncoder* WebPAnimEncoderNewInternal(
    int width, int height, const WebPAnimEncoderOptions* enc_options,
    int abi_version) {
  WebPAnimEncoder* enc;

  if (WEBP_ABI_IS_INCOMPATIBLE(abi_version, WEBP_MUX_ABI_VERSION)) {
    return ((void*)0);
  }
  if (width <= 0 || height <= 0 ||
      (width * (uint64_t)height) >= MAX_IMAGE_AREA) {
    return ((void*)0);
  }

  enc = (WebPAnimEncoder*)WebPSafeCalloc(1, sizeof(*enc));
  if (enc == ((void*)0)) return ((void*)0);

  enc->encoded_frames_ = ((void*)0);
  enc->mux_ = ((void*)0);
  MarkNoError(enc);


  *(int*)&enc->canvas_width_ = width;
  *(int*)&enc->canvas_height_ = height;
  if (enc_options != ((void*)0)) {
    *(WebPAnimEncoderOptions*)&enc->options_ = *enc_options;
    SanitizeEncoderOptions((WebPAnimEncoderOptions*)&enc->options_);
  } else {
    DefaultEncoderOptions((WebPAnimEncoderOptions*)&enc->options_);
  }


  if (!WebPPictureInit(&enc->curr_canvas_copy_) ||
      !WebPPictureInit(&enc->prev_canvas_) ||
      !WebPPictureInit(&enc->prev_canvas_disposed_)) {
    goto Err;
  }
  enc->curr_canvas_copy_.width = width;
  enc->curr_canvas_copy_.height = height;
  enc->curr_canvas_copy_.use_argb = 1;
  if (!WebPPictureAlloc(&enc->curr_canvas_copy_) ||
      !WebPPictureCopy(&enc->curr_canvas_copy_, &enc->prev_canvas_) ||
      !WebPPictureCopy(&enc->curr_canvas_copy_, &enc->prev_canvas_disposed_)) {
    goto Err;
  }
  WebPUtilClearPic(&enc->prev_canvas_, ((void*)0));
  enc->curr_canvas_copy_modified_ = 1;


  ResetCounters(enc);

  enc->size_ = enc->options_.kmax - enc->options_.kmin + 1;


  if (enc->size_ < 2) enc->size_ = 2;
  enc->encoded_frames_ =
      (EncodedFrame*)WebPSafeCalloc(enc->size_, sizeof(*enc->encoded_frames_));
  if (enc->encoded_frames_ == ((void*)0)) goto Err;

  enc->mux_ = WebPMuxNew();
  if (enc->mux_ == ((void*)0)) goto Err;

  enc->count_since_key_frame_ = 0;
  enc->first_timestamp_ = 0;
  enc->prev_timestamp_ = 0;
  enc->prev_candidate_undecided_ = 0;
  enc->is_first_frame_ = 1;
  enc->got_null_frame_ = 0;

  return enc;

 Err:
  WebPAnimEncoderDelete(enc);
  return ((void*)0);
}
