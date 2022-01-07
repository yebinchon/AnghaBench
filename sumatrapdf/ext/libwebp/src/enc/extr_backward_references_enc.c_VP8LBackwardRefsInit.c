
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int block_size_; int refs_; int * tail_; } ;
typedef TYPE_1__ VP8LBackwardRefs ;


 int MIN_BLOCK_SIZE ;
 int assert (int ) ;
 int memset (TYPE_1__* const,int ,int) ;

void VP8LBackwardRefsInit(VP8LBackwardRefs* const refs, int block_size) {
  assert(refs != ((void*)0));
  memset(refs, 0, sizeof(*refs));
  refs->tail_ = &refs->refs_;
  refs->block_size_ =
      (block_size < MIN_BLOCK_SIZE) ? MIN_BLOCK_SIZE : block_size;
}
