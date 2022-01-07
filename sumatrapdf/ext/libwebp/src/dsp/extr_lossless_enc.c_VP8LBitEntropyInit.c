
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entropy; int nonzero_code; scalar_t__ max_val; scalar_t__ nonzeros; scalar_t__ sum; } ;
typedef TYPE_1__ VP8LBitEntropy ;


 int VP8L_NON_TRIVIAL_SYM ;

void VP8LBitEntropyInit(VP8LBitEntropy* const entropy) {
  entropy->entropy = 0.;
  entropy->sum = 0;
  entropy->nonzeros = 0;
  entropy->max_val = 0;
  entropy->nonzero_code = VP8L_NON_TRIVIAL_SYM;
}
