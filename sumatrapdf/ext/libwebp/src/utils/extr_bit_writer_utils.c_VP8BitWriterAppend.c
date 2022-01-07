
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int nb_bits_; scalar_t__ pos_; scalar_t__ buf_; } ;
typedef TYPE_1__ VP8BitWriter ;


 int BitWriterResize (TYPE_1__* const,size_t) ;
 int assert (int ) ;
 int memcpy (scalar_t__,int const*,size_t) ;

int VP8BitWriterAppend(VP8BitWriter* const bw,
                       const uint8_t* data, size_t size) {
  assert(data != ((void*)0));
  if (bw->nb_bits_ != -8) return 0;
  if (!BitWriterResize(bw, size)) return 0;
  memcpy(bw->buf_ + bw->pos_, data, size);
  bw->pos_ += size;
  return 1;
}
