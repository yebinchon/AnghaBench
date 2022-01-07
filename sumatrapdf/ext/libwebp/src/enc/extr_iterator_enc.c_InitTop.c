
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mb_w_; int * top_derr_; int * nz_; int * y_top_; } ;
typedef TYPE_1__ VP8Encoder ;
struct TYPE_5__ {TYPE_1__* enc_; } ;
typedef TYPE_2__ VP8EncIterator ;


 int memset (int *,int,int) ;

__attribute__((used)) static void InitTop(VP8EncIterator* const it) {
  const VP8Encoder* const enc = it->enc_;
  const size_t top_size = enc->mb_w_ * 16;
  memset(enc->y_top_, 127, 2 * top_size);
  memset(enc->nz_, 0, enc->mb_w_ * sizeof(*enc->nz_));
  if (enc->top_derr_ != ((void*)0)) {
    memset(enc->top_derr_, 0, enc->mb_w_ * sizeof(*enc->top_derr_));
  }
}
