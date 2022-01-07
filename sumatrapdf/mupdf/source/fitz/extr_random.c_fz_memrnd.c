
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 scalar_t__ fz_lrand48 (int *) ;

void fz_memrnd(fz_context *ctx, unsigned char *data, int len)
{
 while (len-- > 0)
  *data++ = (unsigned char)fz_lrand48(ctx);
}
