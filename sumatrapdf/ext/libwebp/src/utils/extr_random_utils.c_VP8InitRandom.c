
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int index2_; int amp_; scalar_t__ index1_; int tab_; } ;
typedef TYPE_1__ VP8Random ;


 int VP8_RANDOM_DITHER_FIX ;
 int kRandomTable ;
 int memcpy (int ,int ,int) ;

void VP8InitRandom(VP8Random* const rg, float dithering) {
  memcpy(rg->tab_, kRandomTable, sizeof(rg->tab_));
  rg->index1_ = 0;
  rg->index2_ = 31;
  rg->amp_ = (dithering < 0.0) ? 0
           : (dithering > 1.0) ? (1 << VP8_RANDOM_DITHER_FIX)
           : (uint32_t)((1 << VP8_RANDOM_DITHER_FIX) * dithering);
}
