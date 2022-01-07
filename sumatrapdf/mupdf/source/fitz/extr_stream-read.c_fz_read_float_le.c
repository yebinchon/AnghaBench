
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int fz_stream ;
typedef int fz_context ;


 int fz_read_int32_le (int *,int *) ;

float
fz_read_float_le(fz_context *ctx, fz_stream *stm)
{
 union {float f;int32_t i;} u;

 u.i = fz_read_int32_le(ctx, stm);
 return u.f;
}
