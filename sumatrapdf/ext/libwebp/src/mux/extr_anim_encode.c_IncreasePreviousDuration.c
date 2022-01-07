
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lossy_1x1_bytes ;
typedef int lossless_1x1_bytes ;
struct TYPE_17__ {int const* member_0; int member_1; } ;
typedef TYPE_5__ WebPData ;
struct TYPE_19__ {int member_2; int member_3; int member_1; int member_0; } ;
struct TYPE_14__ {scalar_t__ allow_mixed; } ;
struct TYPE_13__ {scalar_t__ lossless; } ;
struct TYPE_18__ {int count_; int flush_count_; TYPE_7__ prev_rect_; scalar_t__ prev_candidate_undecided_; int count_since_key_frame_; TYPE_2__ options_; TYPE_1__ last_config_; } ;
typedef TYPE_6__ WebPAnimEncoder ;
struct TYPE_16__ {int duration; } ;
struct TYPE_15__ {int duration; int bitstream; int blend_method; int dispose_method; scalar_t__ y_offset; scalar_t__ x_offset; int id; } ;
struct TYPE_20__ {TYPE_4__ key_frame_; TYPE_3__ sub_frame_; scalar_t__ is_key_frame_; } ;
typedef TYPE_7__ FrameRectangle ;
typedef TYPE_8__ EncodedFrame ;


 TYPE_8__* GetFrame (TYPE_6__* const,size_t const) ;
 int MAX_DURATION ;
 int WEBP_CHUNK_ANMF ;
 int WEBP_MUX_BLEND ;
 int WEBP_MUX_DISPOSE_NONE ;
 int WebPDataCopy (TYPE_5__ const*,int *) ;
 int assert (int) ;

__attribute__((used)) static int IncreasePreviousDuration(WebPAnimEncoder* const enc, int duration) {
  const size_t position = enc->count_ - 1;
  EncodedFrame* const prev_enc_frame = GetFrame(enc, position);
  int new_duration;

  assert(enc->count_ >= 1);
  assert(prev_enc_frame->sub_frame_.duration ==
         prev_enc_frame->key_frame_.duration);
  assert(prev_enc_frame->sub_frame_.duration ==
         (prev_enc_frame->sub_frame_.duration & (MAX_DURATION - 1)));
  assert(duration == (duration & (MAX_DURATION - 1)));

  new_duration = prev_enc_frame->sub_frame_.duration + duration;
  if (new_duration >= MAX_DURATION) {


    const FrameRectangle rect = { 0, 0, 1, 1 };
    const uint8_t lossless_1x1_bytes[] = {
      0x52, 0x49, 0x46, 0x46, 0x14, 0x00, 0x00, 0x00, 0x57, 0x45, 0x42, 0x50,
      0x56, 0x50, 0x38, 0x4c, 0x08, 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00, 0x00,
      0x10, 0x88, 0x88, 0x08
    };
    const WebPData lossless_1x1 = {
        lossless_1x1_bytes, sizeof(lossless_1x1_bytes)
    };
    const uint8_t lossy_1x1_bytes[] = {
      0x52, 0x49, 0x46, 0x46, 0x40, 0x00, 0x00, 0x00, 0x57, 0x45, 0x42, 0x50,
      0x56, 0x50, 0x38, 0x58, 0x0a, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x4c, 0x50, 0x48, 0x02, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x56, 0x50, 0x38, 0x20, 0x18, 0x00, 0x00, 0x00,
      0x30, 0x01, 0x00, 0x9d, 0x01, 0x2a, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00,
      0x34, 0x25, 0xa4, 0x00, 0x03, 0x70, 0x00, 0xfe, 0xfb, 0xfd, 0x50, 0x00
    };
    const WebPData lossy_1x1 = { lossy_1x1_bytes, sizeof(lossy_1x1_bytes) };
    const int can_use_lossless =
        (enc->last_config_.lossless || enc->options_.allow_mixed);
    EncodedFrame* const curr_enc_frame = GetFrame(enc, enc->count_);
    curr_enc_frame->is_key_frame_ = 0;
    curr_enc_frame->sub_frame_.id = WEBP_CHUNK_ANMF;
    curr_enc_frame->sub_frame_.x_offset = 0;
    curr_enc_frame->sub_frame_.y_offset = 0;
    curr_enc_frame->sub_frame_.dispose_method = WEBP_MUX_DISPOSE_NONE;
    curr_enc_frame->sub_frame_.blend_method = WEBP_MUX_BLEND;
    curr_enc_frame->sub_frame_.duration = duration;
    if (!WebPDataCopy(can_use_lossless ? &lossless_1x1 : &lossy_1x1,
                      &curr_enc_frame->sub_frame_.bitstream)) {
      return 0;
    }
    ++enc->count_;
    ++enc->count_since_key_frame_;
    enc->flush_count_ = enc->count_ - 1;
    enc->prev_candidate_undecided_ = 0;
    enc->prev_rect_ = rect;
  } else {

    prev_enc_frame->sub_frame_.duration = new_duration;
    prev_enc_frame->key_frame_.duration = new_duration;
  }
  return 1;
}
