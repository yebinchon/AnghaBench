
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mb_w_; int mb_h_; TYPE_1__* mb_info_; } ;
typedef TYPE_2__ VP8Encoder ;
struct TYPE_4__ {scalar_t__ segment_; } ;



__attribute__((used)) static void ResetSegments(VP8Encoder* const enc) {
  int n;
  for (n = 0; n < enc->mb_w_ * enc->mb_h_; ++n) {
    enc->mb_info_[n].segment_ = 0;
  }
}
