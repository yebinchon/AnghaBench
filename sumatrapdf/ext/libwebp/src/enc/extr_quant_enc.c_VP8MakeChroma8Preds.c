
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int yuv_p_; int * uv_top_; scalar_t__ y_; int * u_left_; scalar_t__ x_; } ;
typedef TYPE_1__ VP8EncIterator ;


 int VP8EncPredChroma8 (int ,int const* const,int const* const) ;

void VP8MakeChroma8Preds(const VP8EncIterator* const it) {
  const uint8_t* const left = it->x_ ? it->u_left_ : ((void*)0);
  const uint8_t* const top = it->y_ ? it->uv_top_ : ((void*)0);
  VP8EncPredChroma8(it->yuv_p_, left, top);
}
