
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * offset_length_; scalar_t__ size_; } ;
typedef TYPE_1__ VP8LHashChain ;


 int WebPSafeFree (int *) ;
 int assert (int ) ;

void VP8LHashChainClear(VP8LHashChain* const p) {
  assert(p != ((void*)0));
  WebPSafeFree(p->offset_length_);

  p->size_ = 0;
  p->offset_length_ = ((void*)0);
}
