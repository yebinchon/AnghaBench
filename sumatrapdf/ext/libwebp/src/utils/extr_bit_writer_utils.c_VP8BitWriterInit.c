
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int range_; int nb_bits_; int * buf_; scalar_t__ error_; scalar_t__ max_pos_; scalar_t__ pos_; scalar_t__ run_; scalar_t__ value_; } ;
typedef TYPE_1__ VP8BitWriter ;


 int BitWriterResize (TYPE_1__* const,size_t) ;

int VP8BitWriterInit(VP8BitWriter* const bw, size_t expected_size) {
  bw->range_ = 255 - 1;
  bw->value_ = 0;
  bw->run_ = 0;
  bw->nb_bits_ = -8;
  bw->pos_ = 0;
  bw->max_pos_ = 0;
  bw->error_ = 0;
  bw->buf_ = ((void*)0);
  return (expected_size > 0) ? BitWriterResize(bw, expected_size) : 1;
}
