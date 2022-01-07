
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bit_t ;
struct TYPE_3__ {int value_; int eof_; scalar_t__ bits_; int * buf_; int * buf_end_; } ;
typedef TYPE_1__ VP8BitReader ;


 int assert (int) ;

void VP8LoadFinalBytes(VP8BitReader* const br) {
  assert(br != ((void*)0) && br->buf_ != ((void*)0));

  if (br->buf_ < br->buf_end_) {
    br->bits_ += 8;
    br->value_ = (bit_t)(*br->buf_++) | (br->value_ << 8);
  } else if (!br->eof_) {
    br->value_ <<= 8;
    br->bits_ += 8;
    br->eof_ = 1;
  } else {
    br->bits_ = 0;
  }
}
