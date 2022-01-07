
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * buf_; scalar_t__ nb_bits_; } ;
typedef TYPE_1__ VP8BitWriter ;


 int Flush (TYPE_1__* const) ;
 int VP8PutBits (TYPE_1__* const,int ,scalar_t__) ;

uint8_t* VP8BitWriterFinish(VP8BitWriter* const bw) {
  VP8PutBits(bw, 0, 9 - bw->nb_bits_);
  bw->nb_bits_ = 0;
  Flush(bw);
  return bw->buf_;
}
