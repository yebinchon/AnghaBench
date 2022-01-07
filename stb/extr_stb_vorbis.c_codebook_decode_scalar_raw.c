
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int acc; int valid_bits; } ;
typedef TYPE_1__ vorb ;
typedef scalar_t__ uint32 ;
struct TYPE_8__ {int* codewords; scalar_t__* sorted_codewords; int entries; int sorted_entries; int* sorted_values; int* codeword_lengths; int sparse; } ;
typedef TYPE_2__ Codebook ;


 int NO_CODE ;
 int VORBIS_invalid_stream ;
 int assert (int) ;
 scalar_t__ bit_reverse (int) ;
 int error (TYPE_1__*,int ) ;
 int prep_huffman (TYPE_1__*) ;

__attribute__((used)) static int codebook_decode_scalar_raw(vorb *f, Codebook *c)
{
   int i;
   prep_huffman(f);

   if (c->codewords == ((void*)0) && c->sorted_codewords == ((void*)0))
      return -1;



   if (c->entries > 8 ? c->sorted_codewords!=((void*)0) : !c->codewords) {

      uint32 code = bit_reverse(f->acc);
      int x=0, n=c->sorted_entries, len;

      while (n > 1) {

         int m = x + (n >> 1);
         if (c->sorted_codewords[m] <= code) {
            x = m;
            n -= (n>>1);
         } else {
            n >>= 1;
         }
      }

      if (!c->sparse) x = c->sorted_values[x];

      len = c->codeword_lengths[x];
      if (f->valid_bits >= len) {
         f->acc >>= len;
         f->valid_bits -= len;
         return x;
      }

      f->valid_bits = 0;
      return -1;
   }


   assert(!c->sparse);
   for (i=0; i < c->entries; ++i) {
      if (c->codeword_lengths[i] == NO_CODE) continue;
      if (c->codewords[i] == (f->acc & ((1 << c->codeword_lengths[i])-1))) {
         if (f->valid_bits >= c->codeword_lengths[i]) {
            f->acc >>= c->codeword_lengths[i];
            f->valid_bits -= c->codeword_lengths[i];
            return i;
         }
         f->valid_bits = 0;
         return -1;
      }
   }

   error(f, VORBIS_invalid_stream);
   f->valid_bits = 0;
   return -1;
}
