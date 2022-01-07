
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dispose_method; } ;
typedef TYPE_1__ WebPMuxFrameInfo ;
typedef scalar_t__ WebPMuxAnimDispose ;
struct TYPE_8__ {int count_; scalar_t__ prev_candidate_undecided_; } ;
typedef TYPE_2__ WebPAnimEncoder ;
struct TYPE_9__ {TYPE_1__ sub_frame_; TYPE_1__ key_frame_; scalar_t__ is_key_frame_; } ;
typedef TYPE_3__ EncodedFrame ;


 TYPE_3__* GetFrame (TYPE_2__* const,size_t const) ;
 scalar_t__ WEBP_MUX_DISPOSE_NONE ;
 int assert (int) ;

__attribute__((used)) static void SetPreviousDisposeMethod(WebPAnimEncoder* const enc,
                                     WebPMuxAnimDispose dispose_method) {
  const size_t position = enc->count_ - 2;
  EncodedFrame* const prev_enc_frame = GetFrame(enc, position);
  assert(enc->count_ >= 2);

  if (enc->prev_candidate_undecided_) {
    assert(dispose_method == WEBP_MUX_DISPOSE_NONE);
    prev_enc_frame->sub_frame_.dispose_method = dispose_method;
    prev_enc_frame->key_frame_.dispose_method = dispose_method;
  } else {
    WebPMuxFrameInfo* const prev_info = prev_enc_frame->is_key_frame_
                                        ? &prev_enc_frame->key_frame_
                                        : &prev_enc_frame->sub_frame_;
    prev_info->dispose_method = dispose_method;
  }
}
