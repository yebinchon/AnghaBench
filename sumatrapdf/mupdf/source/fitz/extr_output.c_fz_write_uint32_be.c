
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_int32_be (int *,int *,unsigned int) ;

void
fz_write_uint32_be(fz_context *ctx, fz_output *out, unsigned int x)
{
 fz_write_int32_be(ctx, out, (unsigned int)x);
}
