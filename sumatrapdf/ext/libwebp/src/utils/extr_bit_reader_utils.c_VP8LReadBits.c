
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int const uint32_t ;
struct TYPE_6__ {int bit_pos_; int eos_; } ;
typedef TYPE_1__ VP8LBitReader ;


 int ShiftBytes (TYPE_1__* const) ;
 int VP8LPrefetchBits (TYPE_1__* const) ;
 int VP8LSetEndOfStream (TYPE_1__* const) ;
 int VP8L_MAX_NUM_BIT_READ ;
 int assert (int) ;
 int* kBitMask ;

uint32_t VP8LReadBits(VP8LBitReader* const br, int n_bits) {
  assert(n_bits >= 0);

  if (!br->eos_ && n_bits <= VP8L_MAX_NUM_BIT_READ) {
    const uint32_t val = VP8LPrefetchBits(br) & kBitMask[n_bits];
    const int new_bits = br->bit_pos_ + n_bits;
    br->bit_pos_ = new_bits;
    ShiftBytes(br);
    return val;
  } else {
    VP8LSetEndOfStream(br);
    return 0;
  }
}
