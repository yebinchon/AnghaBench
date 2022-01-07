
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t i4_; int * i4_boundary_; int * i4_top_; } ;
typedef TYPE_1__ VP8EncIterator ;


 int BPS ;
 int* VP8Scan ;
 int* VP8TopLeftI4 ;

int VP8IteratorRotateI4(VP8EncIterator* const it,
                        const uint8_t* const yuv_out) {
  const uint8_t* const blk = yuv_out + VP8Scan[it->i4_];
  uint8_t* const top = it->i4_top_;
  int i;


  for (i = 0; i <= 3; ++i) {
    top[-4 + i] = blk[i + 3 * BPS];
  }
  if ((it->i4_ & 3) != 3) {
    for (i = 0; i <= 2; ++i) {
      top[i] = blk[3 + (2 - i) * BPS];
    }
  } else {
    for (i = 0; i <= 3; ++i) {
      top[i] = top[i + 4];
    }
  }

  ++it->i4_;
  if (it->i4_ == 16) {
    return 0;
  }

  it->i4_top_ = it->i4_boundary_ + VP8TopLeftI4[it->i4_];
  return 1;
}
