
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vp8l_val_t ;
struct TYPE_4__ {int bit_pos_; scalar_t__ pos_; scalar_t__ len_; int val_; scalar_t__ buf_; } ;
typedef TYPE_1__ VP8LBitReader ;


 scalar_t__ HToLE32 (int ) ;
 int ShiftBytes (TYPE_1__* const) ;
 int VP8L_LBITS ;
 scalar_t__ VP8L_LOG8_WBITS ;
 int VP8L_WBITS ;
 int WebPMemToUint32 (scalar_t__) ;
 int assert (int) ;

void VP8LDoFillBitWindow(VP8LBitReader* const br) {
  assert(br->bit_pos_ >= VP8L_WBITS);
  ShiftBytes(br);
}
