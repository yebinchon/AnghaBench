
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {int unused_bits; int len; unsigned int* data; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_ensure_buffer (int *,TYPE_1__*,int) ;

void
fz_append_bits(fz_context *ctx, fz_buffer *buf, int val, int bits)
{
 int shift;






 if (bits == 0)
  return;
 shift = (buf->unused_bits - bits);




 if (shift < 0)
 {
  int extra = (7-shift)>>3;
  fz_ensure_buffer(ctx, buf, buf->len + extra);
 }


 if (buf->unused_bits)
 {
  buf->data[buf->len-1] |= (shift >= 0 ? (((unsigned int)val)<<shift) : (((unsigned int)val)>>-shift));
  if (shift >= 0)
  {

   buf->unused_bits -= bits;
   return;
  }


  bits = -shift;
 }


 while (bits >= 8)
 {
  bits -= 8;
  buf->data[buf->len++] = val>>bits;
 }


 if (bits > 0)
 {
  bits = 8-bits;
  buf->data[buf->len++] = val<<bits;
 }
 buf->unused_bits = bits;
}
