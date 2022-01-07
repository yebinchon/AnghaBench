
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_write_int32_le (int *,int *,int ) ;

void
fz_write_float_le(fz_context *ctx, fz_output *out, float f)
{
 union {float f; int32_t i;} u;
 u.f = f;
 fz_write_int32_le(ctx, out, u.i);
}
