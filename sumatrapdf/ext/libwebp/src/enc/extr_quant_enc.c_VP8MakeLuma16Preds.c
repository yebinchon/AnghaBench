
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int yuv_p_; int * y_top_; scalar_t__ y_; int * y_left_; scalar_t__ x_; } ;
typedef TYPE_1__ VP8EncIterator ;


 int VP8EncPredLuma16 (int ,int const* const,int const* const) ;

void VP8MakeLuma16Preds(const VP8EncIterator* const it) {
  const uint8_t* const left = it->x_ ? it->y_left_ : ((void*)0);
  const uint8_t* const top = it->y_ ? it->y_top_ : ((void*)0);
  VP8EncPredLuma16(it->yuv_p_, left, top);
}
