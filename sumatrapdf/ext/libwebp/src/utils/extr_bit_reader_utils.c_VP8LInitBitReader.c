
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vp8l_val_t ;
typedef scalar_t__ uint8_t ;
struct TYPE_3__ {size_t len_; int val_; size_t pos_; scalar_t__* buf_; scalar_t__ eos_; scalar_t__ bit_pos_; } ;
typedef TYPE_1__ VP8LBitReader ;


 int assert (int) ;

void VP8LInitBitReader(VP8LBitReader* const br, const uint8_t* const start,
                       size_t length) {
  size_t i;
  vp8l_val_t value = 0;
  assert(br != ((void*)0));
  assert(start != ((void*)0));
  assert(length < 0xfffffff8u);

  br->len_ = length;
  br->val_ = 0;
  br->bit_pos_ = 0;
  br->eos_ = 0;

  if (length > sizeof(br->val_)) {
    length = sizeof(br->val_);
  }
  for (i = 0; i < length; ++i) {
    value |= (vp8l_val_t)start[i] << (8 * i);
  }
  br->val_ = value;
  br->pos_ = length;
  br->buf_ = start;
}
