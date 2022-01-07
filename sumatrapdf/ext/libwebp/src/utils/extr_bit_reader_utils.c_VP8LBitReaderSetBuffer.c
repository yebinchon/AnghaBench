
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t len_; int eos_; size_t pos_; int * buf_; } ;
typedef TYPE_1__ VP8LBitReader ;


 scalar_t__ VP8LIsEndOfStream (TYPE_1__* const) ;
 int assert (int) ;

void VP8LBitReaderSetBuffer(VP8LBitReader* const br,
                            const uint8_t* const buf, size_t len) {
  assert(br != ((void*)0));
  assert(buf != ((void*)0));
  assert(len < 0xfffffff8u);
  br->buf_ = buf;
  br->len_ = len;

  br->eos_ = (br->pos_ > br->len_) || VP8LIsEndOfStream(br);
}
