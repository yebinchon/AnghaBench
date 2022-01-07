
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mb_w_; int mb_h_; } ;
typedef TYPE_1__ VP8Encoder ;
struct TYPE_8__ {scalar_t__ do_trellis_; int bit_count_; TYPE_1__* enc_; } ;
typedef TYPE_2__ VP8EncIterator ;


 int InitTop (TYPE_2__* const) ;
 int VP8IteratorSetCountDown (TYPE_2__* const,int) ;
 int VP8IteratorSetRow (TYPE_2__* const,int ) ;
 int memset (int ,int ,int) ;

void VP8IteratorReset(VP8EncIterator* const it) {
  VP8Encoder* const enc = it->enc_;
  VP8IteratorSetRow(it, 0);
  VP8IteratorSetCountDown(it, enc->mb_w_ * enc->mb_h_);
  InitTop(it);
  memset(it->bit_count_, 0, sizeof(it->bit_count_));
  it->do_trellis_ = 0;
}
