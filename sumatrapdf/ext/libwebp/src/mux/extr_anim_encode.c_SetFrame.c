
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int candidates ;
typedef int const WebPPicture ;
typedef scalar_t__ WebPEncodingError ;
struct TYPE_20__ {int lossless; int quality; } ;
typedef TYPE_2__ WebPConfig ;
struct TYPE_19__ {scalar_t__ minimize_size; scalar_t__ allow_mixed; } ;
struct TYPE_21__ {int is_first_frame_; TYPE_1__ options_; int prev_rect_; int const prev_canvas_disposed_; TYPE_2__ last_config_reversed_; TYPE_2__ last_config_; int prev_candidate_undecided_; int const prev_canvas_; int const curr_canvas_copy_; } ;
typedef TYPE_3__ WebPAnimEncoder ;
struct TYPE_23__ {int mem_; scalar_t__ evaluate_; } ;
struct TYPE_22__ {int should_try_; int rect_lossy_; int rect_ll_; } ;
typedef TYPE_4__ SubFrameParams ;
typedef int EncodedFrame ;
typedef TYPE_5__ Candidate ;


 int CANDIDATE_COUNT ;
 int DisposeFrameRectangle (int ,int *,int const* const) ;
 scalar_t__ GenerateCandidates (TYPE_3__* const,TYPE_5__*,int ,int const,int,TYPE_4__*,TYPE_2__*,TYPE_2__*) ;
 int GetSubRects (int const* const,int const* const,int,int const,int ,TYPE_4__*) ;
 scalar_t__ IsEmptyRect (int *) ;
 int PickBestCandidate (TYPE_3__* const,TYPE_5__*,int,int * const) ;
 scalar_t__ RectArea (int *) ;
 int SubFrameParamsFree (TYPE_4__*) ;
 int SubFrameParamsInit (TYPE_4__*,int,int const) ;
 scalar_t__ VP8_ENC_ERROR_INVALID_CONFIGURATION ;
 scalar_t__ VP8_ENC_OK ;
 int WEBP_MUX_DISPOSE_BACKGROUND ;
 int WEBP_MUX_DISPOSE_NONE ;
 int WebPCopyPixels (int const* const,int const* const) ;
 int WebPMemoryWriterClear (int *) ;
 int assert (int const) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static WebPEncodingError SetFrame(WebPAnimEncoder* const enc,
                                  const WebPConfig* const config,
                                  int is_key_frame,
                                  EncodedFrame* const encoded_frame,
                                  int* const frame_skipped) {
  int i;
  WebPEncodingError error_code = VP8_ENC_OK;
  const WebPPicture* const curr_canvas = &enc->curr_canvas_copy_;
  const WebPPicture* const prev_canvas = &enc->prev_canvas_;
  Candidate candidates[CANDIDATE_COUNT];
  const int is_lossless = config->lossless;
  const int consider_lossless = is_lossless || enc->options_.allow_mixed;
  const int consider_lossy = !is_lossless || enc->options_.allow_mixed;
  const int is_first_frame = enc->is_first_frame_;



  const int empty_rect_allowed_none = !is_first_frame;





  const int empty_rect_allowed_bg = 0;







  const int dispose_bg_possible =
      !is_key_frame && !enc->prev_candidate_undecided_;

  SubFrameParams dispose_none_params;
  SubFrameParams dispose_bg_params;

  WebPConfig config_ll = *config;
  WebPConfig config_lossy = *config;
  config_ll.lossless = 1;
  config_lossy.lossless = 0;
  enc->last_config_ = *config;
  enc->last_config_reversed_ = config->lossless ? config_lossy : config_ll;
  *frame_skipped = 0;

  if (!SubFrameParamsInit(&dispose_none_params, 1, empty_rect_allowed_none) ||
      !SubFrameParamsInit(&dispose_bg_params, 0, empty_rect_allowed_bg)) {
    return VP8_ENC_ERROR_INVALID_CONFIGURATION;
  }

  memset(candidates, 0, sizeof(candidates));


  if (!GetSubRects(prev_canvas, curr_canvas, is_key_frame, is_first_frame,
                   config_lossy.quality, &dispose_none_params)) {
    error_code = VP8_ENC_ERROR_INVALID_CONFIGURATION;
    goto Err;
  }

  if ((consider_lossless && IsEmptyRect(&dispose_none_params.rect_ll_)) ||
      (consider_lossy && IsEmptyRect(&dispose_none_params.rect_lossy_))) {


    assert(empty_rect_allowed_none);
    *frame_skipped = 1;
    goto End;
  }

  if (dispose_bg_possible) {

    WebPPicture* const prev_canvas_disposed = &enc->prev_canvas_disposed_;
    WebPCopyPixels(prev_canvas, prev_canvas_disposed);
    DisposeFrameRectangle(WEBP_MUX_DISPOSE_BACKGROUND, &enc->prev_rect_,
                          prev_canvas_disposed);

    if (!GetSubRects(prev_canvas_disposed, curr_canvas, is_key_frame,
                     is_first_frame, config_lossy.quality,
                     &dispose_bg_params)) {
      error_code = VP8_ENC_ERROR_INVALID_CONFIGURATION;
      goto Err;
    }
    assert(!IsEmptyRect(&dispose_bg_params.rect_ll_));
    assert(!IsEmptyRect(&dispose_bg_params.rect_lossy_));

    if (enc->options_.minimize_size) {
      dispose_bg_params.should_try_ = 1;
      dispose_none_params.should_try_ = 1;
    } else if ((is_lossless &&
                RectArea(&dispose_bg_params.rect_ll_) <
                    RectArea(&dispose_none_params.rect_ll_)) ||
               (!is_lossless &&
                RectArea(&dispose_bg_params.rect_lossy_) <
                    RectArea(&dispose_none_params.rect_lossy_))) {
      dispose_bg_params.should_try_ = 1;
      dispose_none_params.should_try_ = 0;
    }
  }

  if (dispose_none_params.should_try_) {
    error_code = GenerateCandidates(
        enc, candidates, WEBP_MUX_DISPOSE_NONE, is_lossless, is_key_frame,
        &dispose_none_params, &config_ll, &config_lossy);
    if (error_code != VP8_ENC_OK) goto Err;
  }

  if (dispose_bg_params.should_try_) {
    assert(!enc->is_first_frame_);
    assert(dispose_bg_possible);
    error_code = GenerateCandidates(
        enc, candidates, WEBP_MUX_DISPOSE_BACKGROUND, is_lossless, is_key_frame,
        &dispose_bg_params, &config_ll, &config_lossy);
    if (error_code != VP8_ENC_OK) goto Err;
  }

  PickBestCandidate(enc, candidates, is_key_frame, encoded_frame);

  goto End;

 Err:
  for (i = 0; i < CANDIDATE_COUNT; ++i) {
    if (candidates[i].evaluate_) {
      WebPMemoryWriterClear(&candidates[i].mem_);
    }
  }

 End:
  SubFrameParamsFree(&dispose_none_params);
  SubFrameParamsFree(&dispose_bg_params);
  return error_code;
}
