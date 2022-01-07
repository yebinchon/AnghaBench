
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mb_w_; } ;
typedef TYPE_1__ VP8Encoder ;
struct TYPE_6__ {int x_; int * i4_boundary_; int * y_top_; int * y_left_; int * i4_top_; scalar_t__ i4_; TYPE_1__* enc_; } ;
typedef TYPE_2__ VP8EncIterator ;


 int VP8IteratorNzToBytes (TYPE_2__* const) ;
 int* VP8TopLeftI4 ;

void VP8IteratorStartI4(VP8EncIterator* const it) {
  const VP8Encoder* const enc = it->enc_;
  int i;

  it->i4_ = 0;
  it->i4_top_ = it->i4_boundary_ + VP8TopLeftI4[0];


  for (i = 0; i < 17; ++i) {
    it->i4_boundary_[i] = it->y_left_[15 - i];
  }
  for (i = 0; i < 16; ++i) {
    it->i4_boundary_[17 + i] = it->y_top_[i];
  }

  if (it->x_ < enc->mb_w_ - 1) {
    for (i = 16; i < 16 + 4; ++i) {
      it->i4_boundary_[17 + i] = it->y_top_[i];
    }
  } else {
    for (i = 16; i < 16 + 4; ++i) {
      it->i4_boundary_[17 + i] = it->i4_boundary_[17 + 15];
    }
  }
  VP8IteratorNzToBytes(it);
}
