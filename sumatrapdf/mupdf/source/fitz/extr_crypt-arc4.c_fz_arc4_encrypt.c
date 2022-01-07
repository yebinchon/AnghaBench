
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_arc4 ;


 unsigned char fz_arc4_next (int *) ;

void
fz_arc4_encrypt(fz_arc4 *arc4, unsigned char *dest, const unsigned char *src, size_t len)
{
 size_t i;
 for (i = 0; i < len; i++)
 {
  unsigned char x;
  x = fz_arc4_next(arc4);
  dest[i] = src[i] ^ x;
 }
}
