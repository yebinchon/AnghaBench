
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int sse_count_; int * sse_; } ;
typedef TYPE_1__ VP8Encoder ;
struct TYPE_5__ {int * yuv_out_; int * yuv_in_; TYPE_1__* enc_; } ;
typedef TYPE_2__ VP8EncIterator ;


 int U_OFF_ENC ;
 scalar_t__ VP8SSE16x16 (int const* const,int const* const) ;
 scalar_t__ VP8SSE8x8 (int const* const,int const* const) ;
 int V_OFF_ENC ;
 int Y_OFF_ENC ;

__attribute__((used)) static void StoreSSE(const VP8EncIterator* const it) {
  VP8Encoder* const enc = it->enc_;
  const uint8_t* const in = it->yuv_in_;
  const uint8_t* const out = it->yuv_out_;

  enc->sse_[0] += VP8SSE16x16(in + Y_OFF_ENC, out + Y_OFF_ENC);
  enc->sse_[1] += VP8SSE8x8(in + U_OFF_ENC, out + U_OFF_ENC);
  enc->sse_[2] += VP8SSE8x8(in + V_OFF_ENC, out + V_OFF_ENC);
  enc->sse_count_ += 16 * 16;
}
