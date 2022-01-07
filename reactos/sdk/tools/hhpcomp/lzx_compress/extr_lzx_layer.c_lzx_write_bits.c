
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int bits_in_buf; int bit_buf; int len_compressed_output; int out_arg; int (* put_bytes ) (int ,int,int*) ;} ;
typedef TYPE_1__ lzx_data ;


 int fprintf (int ,char*,int,...) ;
 int stderr ;
 int stub1 (int ,int,int*) ;

__attribute__((used)) static void lzx_write_bits(lzx_data *lzxd, int nbits, uint32_t bits)
{
  int cur_bits;
  int shift_bits;
  int rshift_bits;
  uint16_t mask_bits;




  cur_bits = lzxd->bits_in_buf;
  while ((cur_bits + nbits) >= 16) {
    shift_bits = 16 - cur_bits;
    rshift_bits = nbits - shift_bits;
    if (shift_bits == 16) {
      lzxd->bit_buf = (bits>>rshift_bits) & 0xFFFF;
    }
    else {
      mask_bits = (1U << shift_bits) - 1;
      lzxd->bit_buf <<= shift_bits;
      lzxd->bit_buf |= (bits>>rshift_bits) & mask_bits;
    }






    lzxd->put_bytes(lzxd->out_arg, sizeof(lzxd->bit_buf), &lzxd->bit_buf);
    lzxd->len_compressed_output += sizeof(lzxd->bit_buf);
    lzxd->bit_buf = 0;
    nbits -= shift_bits;
    cur_bits = 0;
  }


  shift_bits = nbits;
  mask_bits = (1U << shift_bits) - 1;
  lzxd->bit_buf <<= shift_bits;
  lzxd->bit_buf |= bits & mask_bits;
  cur_bits += nbits;




  lzxd->bits_in_buf = cur_bits;
}
