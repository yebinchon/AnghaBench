
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int top_derr_; int percent_; int lf_stats_; } ;
typedef TYPE_1__ VP8Encoder ;
struct TYPE_7__ {int top_derr_; int * u_left_; int * v_left_; int * y_left_; scalar_t__ yuv_left_mem_; int percent0_; int lf_stats_; int * yuv_out2_; int * yuv_p_; int * yuv_out_; int * yuv_in_; scalar_t__ yuv_mem_; TYPE_1__* enc_; } ;
typedef TYPE_2__ VP8EncIterator ;


 int VP8IteratorReset (TYPE_2__* const) ;
 scalar_t__ WEBP_ALIGN (scalar_t__) ;
 int YUV_SIZE_ENC ;

void VP8IteratorInit(VP8Encoder* const enc, VP8EncIterator* const it) {
  it->enc_ = enc;
  it->yuv_in_ = (uint8_t*)WEBP_ALIGN(it->yuv_mem_);
  it->yuv_out_ = it->yuv_in_ + YUV_SIZE_ENC;
  it->yuv_out2_ = it->yuv_out_ + YUV_SIZE_ENC;
  it->yuv_p_ = it->yuv_out2_ + YUV_SIZE_ENC;
  it->lf_stats_ = enc->lf_stats_;
  it->percent0_ = enc->percent_;
  it->y_left_ = (uint8_t*)WEBP_ALIGN(it->yuv_left_mem_ + 1);
  it->u_left_ = it->y_left_ + 16 + 16;
  it->v_left_ = it->u_left_ + 16;
  it->top_derr_ = enc->top_derr_;
  VP8IteratorReset(it);
}
