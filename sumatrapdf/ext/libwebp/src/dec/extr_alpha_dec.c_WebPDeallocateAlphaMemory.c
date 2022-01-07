
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * alph_dec_; int * alpha_plane_; int * alpha_plane_mem_; } ;
typedef TYPE_1__ VP8Decoder ;


 int ALPHDelete (int *) ;
 int WebPSafeFree (int *) ;
 int assert (int ) ;

void WebPDeallocateAlphaMemory(VP8Decoder* const dec) {
  assert(dec != ((void*)0));
  WebPSafeFree(dec->alpha_plane_mem_);
  dec->alpha_plane_mem_ = ((void*)0);
  dec->alpha_plane_ = ((void*)0);
  ALPHDelete(dec->alph_dec_);
  dec->alph_dec_ = ((void*)0);
}
