
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cur_; scalar_t__ buf_; scalar_t__ end_; int error_; int used_; int bits_; } ;
typedef TYPE_1__ VP8LBitWriter ;


 int assert (int) ;

void VP8LBitWriterReset(const VP8LBitWriter* const bw_init,
                        VP8LBitWriter* const bw) {
  bw->bits_ = bw_init->bits_;
  bw->used_ = bw_init->used_;
  bw->cur_ = bw->buf_ + (bw_init->cur_ - bw_init->buf_);
  assert(bw->cur_ <= bw->end_);
  bw->error_ = bw_init->error_;
}
