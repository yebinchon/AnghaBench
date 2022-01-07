
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i4_top_; int yuv_p_; } ;
typedef TYPE_1__ VP8EncIterator ;


 int VP8EncPredLuma4 (int ,int ) ;

void VP8MakeIntra4Preds(const VP8EncIterator* const it) {
  VP8EncPredLuma4(it->yuv_p_, it->i4_top_);
}
