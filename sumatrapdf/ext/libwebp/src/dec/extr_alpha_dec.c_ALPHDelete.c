
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * vp8l_dec_; } ;
typedef TYPE_1__ ALPHDecoder ;


 int VP8LDelete (int *) ;
 int WebPSafeFree (TYPE_1__* const) ;

__attribute__((used)) static void ALPHDelete(ALPHDecoder* const dec) {
  if (dec != ((void*)0)) {
    VP8LDelete(dec->vp8l_dec_);
    dec->vp8l_dec_ = ((void*)0);
    WebPSafeFree(dec);
  }
}
