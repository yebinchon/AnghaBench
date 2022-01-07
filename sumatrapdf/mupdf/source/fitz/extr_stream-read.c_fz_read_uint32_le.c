
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int fz_stream ;
typedef int fz_context ;


 int EOF ;
 int FZ_ERROR_GENERIC ;
 int fz_read_byte (int *,int *) ;
 int fz_throw (int *,int ,char*) ;

uint32_t fz_read_uint32_le(fz_context *ctx, fz_stream *stm)
{
 int a = fz_read_byte(ctx, stm);
 int b = fz_read_byte(ctx, stm);
 int c = fz_read_byte(ctx, stm);
 int d = fz_read_byte(ctx, stm);
 if (a == EOF || b == EOF || c == EOF || d == EOF)
  fz_throw(ctx, FZ_ERROR_GENERIC, "premature end of file in int32");
 return ((uint32_t)a) | ((uint32_t)b<<8) | ((uint32_t)c<<16) | ((uint32_t)d<<24);
}
