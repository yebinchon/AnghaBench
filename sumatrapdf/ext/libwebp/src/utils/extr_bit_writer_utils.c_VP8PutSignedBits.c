
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8BitWriter ;


 int VP8PutBitUniform (int * const,int) ;
 int VP8PutBits (int * const,int,int) ;

void VP8PutSignedBits(VP8BitWriter* const bw, int value, int nb_bits) {
  if (!VP8PutBitUniform(bw, value != 0)) return;
  if (value < 0) {
    VP8PutBits(bw, ((-value) << 1) | 1, nb_bits + 1);
  } else {
    VP8PutBits(bw, value << 1, nb_bits + 1);
  }
}
