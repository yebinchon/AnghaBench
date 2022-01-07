
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * last_pos_; int * cur_pos; TYPE_1__* cur_block_; } ;
typedef TYPE_2__ VP8LRefsCursor ;
struct TYPE_8__ {TYPE_1__* refs_; } ;
typedef TYPE_3__ VP8LBackwardRefs ;
struct TYPE_6__ {int size_; int * start_; } ;



VP8LRefsCursor VP8LRefsCursorInit(const VP8LBackwardRefs* const refs) {
  VP8LRefsCursor c;
  c.cur_block_ = refs->refs_;
  if (refs->refs_ != ((void*)0)) {
    c.cur_pos = c.cur_block_->start_;
    c.last_pos_ = c.cur_pos + c.cur_block_->size_;
  } else {
    c.cur_pos = ((void*)0);
    c.last_pos_ = ((void*)0);
  }
  return c;
}
