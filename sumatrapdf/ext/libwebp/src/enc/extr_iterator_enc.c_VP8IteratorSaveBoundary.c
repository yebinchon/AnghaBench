
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int mb_w_; int mb_h_; } ;
typedef TYPE_1__ VP8Encoder ;
struct TYPE_5__ {int x_; int y_; int * uv_top_; int * y_top_; int * v_left_; int * u_left_; int * y_left_; int * yuv_out_; TYPE_1__* enc_; } ;
typedef TYPE_2__ VP8EncIterator ;


 int BPS ;
 int U_OFF_ENC ;
 int Y_OFF_ENC ;
 int memcpy (int *,int const* const,int) ;

void VP8IteratorSaveBoundary(VP8EncIterator* const it) {
  VP8Encoder* const enc = it->enc_;
  const int x = it->x_, y = it->y_;
  const uint8_t* const ysrc = it->yuv_out_ + Y_OFF_ENC;
  const uint8_t* const uvsrc = it->yuv_out_ + U_OFF_ENC;
  if (x < enc->mb_w_ - 1) {
    int i;
    for (i = 0; i < 16; ++i) {
      it->y_left_[i] = ysrc[15 + i * BPS];
    }
    for (i = 0; i < 8; ++i) {
      it->u_left_[i] = uvsrc[7 + i * BPS];
      it->v_left_[i] = uvsrc[15 + i * BPS];
    }

    it->y_left_[-1] = it->y_top_[15];
    it->u_left_[-1] = it->uv_top_[0 + 7];
    it->v_left_[-1] = it->uv_top_[8 + 7];
  }
  if (y < enc->mb_h_ - 1) {
    memcpy(it->y_top_, ysrc + 15 * BPS, 16);
    memcpy(it->uv_top_, uvsrc + 7 * BPS, 8 + 8);
  }
}
