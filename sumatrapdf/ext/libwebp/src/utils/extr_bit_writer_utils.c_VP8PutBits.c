
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VP8BitWriter ;


 int VP8PutBitUniform (int * const,int) ;
 int assert (int) ;

void VP8PutBits(VP8BitWriter* const bw, uint32_t value, int nb_bits) {
  uint32_t mask;
  assert(nb_bits > 0 && nb_bits < 32);
  for (mask = 1u << (nb_bits - 1); mask; mask >>= 1) {
    VP8PutBitUniform(bw, value & mask);
  }
}
