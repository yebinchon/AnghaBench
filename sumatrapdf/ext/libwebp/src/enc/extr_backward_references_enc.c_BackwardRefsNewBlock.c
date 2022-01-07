
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int block_size_; int error_; TYPE_2__* last_block_; TYPE_2__** tail_; TYPE_2__* free_blocks_; } ;
typedef TYPE_1__ VP8LBackwardRefs ;
struct TYPE_6__ {scalar_t__ size_; struct TYPE_6__* next_; int * start_; } ;
typedef TYPE_2__ PixOrCopyBlock ;
typedef int PixOrCopy ;


 scalar_t__ WebPSafeMalloc (unsigned long long,size_t const) ;

__attribute__((used)) static PixOrCopyBlock* BackwardRefsNewBlock(VP8LBackwardRefs* const refs) {
  PixOrCopyBlock* b = refs->free_blocks_;
  if (b == ((void*)0)) {
    const size_t total_size =
        sizeof(*b) + refs->block_size_ * sizeof(*b->start_);
    b = (PixOrCopyBlock*)WebPSafeMalloc(1ULL, total_size);
    if (b == ((void*)0)) {
      refs->error_ |= 1;
      return ((void*)0);
    }
    b->start_ = (PixOrCopy*)((uint8_t*)b + sizeof(*b));
  } else {
    refs->free_blocks_ = b->next_;
  }
  *refs->tail_ = b;
  refs->tail_ = &b->next_;
  refs->last_block_ = b;
  b->next_ = ((void*)0);
  b->size_ = 0;
  return b;
}
