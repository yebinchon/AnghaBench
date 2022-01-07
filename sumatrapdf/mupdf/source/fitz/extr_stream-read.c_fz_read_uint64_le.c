
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int fz_stream ;
typedef int fz_context ;


 int EOF ;
 int FZ_ERROR_GENERIC ;
 int fz_read_byte (int *,int *) ;
 int fz_throw (int *,int ,char*) ;

uint64_t fz_read_uint64_le(fz_context *ctx, fz_stream *stm)
{
 int a = fz_read_byte(ctx, stm);
 int b = fz_read_byte(ctx, stm);
 int c = fz_read_byte(ctx, stm);
 int d = fz_read_byte(ctx, stm);
 int e = fz_read_byte(ctx, stm);
 int f = fz_read_byte(ctx, stm);
 int g = fz_read_byte(ctx, stm);
 int h = fz_read_byte(ctx, stm);
 if (a == EOF || b == EOF || c == EOF || d == EOF || e == EOF || f == EOF || g == EOF || h == EOF)
  fz_throw(ctx, FZ_ERROR_GENERIC, "premature end of file in int64");
 return ((uint64_t)a) | ((uint64_t)b<<8) | ((uint64_t)c<<16) | ((uint64_t)d<<24)
  | ((uint64_t)e<<32) | ((uint64_t)f<<40) | ((uint64_t)g<<48) | ((uint64_t)h<<56);
}
