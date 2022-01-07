
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int range_; int bits_; scalar_t__ eof_; scalar_t__ value_; } ;
typedef TYPE_1__ VP8BitReader ;


 int VP8BitReaderSetBuffer (TYPE_1__* const,int const* const,size_t) ;
 int VP8LoadNewBytes (TYPE_1__* const) ;
 int assert (int) ;

void VP8InitBitReader(VP8BitReader* const br,
                      const uint8_t* const start, size_t size) {
  assert(br != ((void*)0));
  assert(start != ((void*)0));
  assert(size < (1u << 31));
  br->range_ = 255 - 1;
  br->value_ = 0;
  br->bits_ = -8;
  br->eof_ = 0;
  VP8BitReaderSetBuffer(br, start, size);
  VP8LoadNewBytes(br);
}
