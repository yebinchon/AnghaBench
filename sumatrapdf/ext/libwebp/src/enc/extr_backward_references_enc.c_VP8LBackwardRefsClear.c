
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* free_blocks_; } ;
typedef TYPE_1__ VP8LBackwardRefs ;
struct TYPE_7__ {struct TYPE_7__* next_; } ;
typedef TYPE_2__ PixOrCopyBlock ;


 int VP8LClearBackwardRefs (TYPE_1__* const) ;
 int WebPSafeFree (TYPE_2__*) ;
 int assert (int ) ;

void VP8LBackwardRefsClear(VP8LBackwardRefs* const refs) {
  assert(refs != ((void*)0));
  VP8LClearBackwardRefs(refs);
  while (refs->free_blocks_ != ((void*)0)) {
    PixOrCopyBlock* const next = refs->free_blocks_->next_;
    WebPSafeFree(refs->free_blocks_);
    refs->free_blocks_ = next;
  }
}
