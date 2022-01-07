
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* cur_block_; int * last_pos_; int * cur_pos; } ;
typedef TYPE_1__ VP8LRefsCursor ;
struct TYPE_5__ {int size_; int * start_; struct TYPE_5__* next_; } ;
typedef TYPE_2__ PixOrCopyBlock ;



void VP8LRefsCursorNextBlock(VP8LRefsCursor* const c) {
  PixOrCopyBlock* const b = c->cur_block_->next_;
  c->cur_pos = (b == ((void*)0)) ? ((void*)0) : b->start_;
  c->last_pos_ = (b == ((void*)0)) ? ((void*)0) : b->start_ + b->size_;
  c->cur_block_ = b;
}
