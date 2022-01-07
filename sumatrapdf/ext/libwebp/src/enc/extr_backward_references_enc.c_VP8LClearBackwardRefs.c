
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * refs_; int * last_block_; int ** tail_; int * free_blocks_; } ;
typedef TYPE_1__ VP8LBackwardRefs ;


 int assert (int ) ;

void VP8LClearBackwardRefs(VP8LBackwardRefs* const refs) {
  assert(refs != ((void*)0));
  if (refs->tail_ != ((void*)0)) {
    *refs->tail_ = refs->free_blocks_;
  }
  refs->free_blocks_ = refs->refs_;
  refs->tail_ = &refs->refs_;
  refs->last_block_ = ((void*)0);
  refs->refs_ = ((void*)0);
}
