
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ block_size_; TYPE_2__* last_block_; } ;
typedef TYPE_1__ VP8LBackwardRefs ;
struct TYPE_7__ {scalar_t__ size_; int * start_; } ;
typedef TYPE_2__ PixOrCopyBlock ;
typedef int PixOrCopy ;


 TYPE_2__* BackwardRefsNewBlock (TYPE_1__* const) ;

void VP8LBackwardRefsCursorAdd(VP8LBackwardRefs* const refs,
                               const PixOrCopy v) {
  PixOrCopyBlock* b = refs->last_block_;
  if (b == ((void*)0) || b->size_ == refs->block_size_) {
    b = BackwardRefsNewBlock(refs);
    if (b == ((void*)0)) return;
  }
  b->start_[b->size_++] = v;
}
