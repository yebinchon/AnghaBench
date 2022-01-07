
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32 ;
struct TYPE_3__ {int* codeword_lengths; void** codewords; int sparse; } ;
typedef TYPE_1__ Codebook ;



__attribute__((used)) static void add_entry(Codebook *c, uint32 huff_code, int symbol, int count, int len, uint32 *values)
{
   if (!c->sparse) {
      c->codewords [symbol] = huff_code;
   } else {
      c->codewords [count] = huff_code;
      c->codeword_lengths[count] = len;
      values [count] = symbol;
   }
}
