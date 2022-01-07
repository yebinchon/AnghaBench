
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * colors_; } ;
typedef TYPE_1__ VP8LColorCache ;


 int WebPSafeFree (int *) ;

void VP8LColorCacheClear(VP8LColorCache* const cc) {
  if (cc != ((void*)0)) {
    WebPSafeFree(cc->colors_);
    cc->colors_ = ((void*)0);
  }
}
