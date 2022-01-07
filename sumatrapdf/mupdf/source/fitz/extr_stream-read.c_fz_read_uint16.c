
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int fz_stream ;
typedef int fz_context ;


 int EOF ;
 int FZ_ERROR_GENERIC ;
 int fz_read_byte (int *,int *) ;
 int fz_throw (int *,int ,char*) ;

uint16_t fz_read_uint16(fz_context *ctx, fz_stream *stm)
{
 int a = fz_read_byte(ctx, stm);
 int b = fz_read_byte(ctx, stm);
 if (a == EOF || b == EOF)
  fz_throw(ctx, FZ_ERROR_GENERIC, "premature end of file in int16");
 return ((uint16_t)a<<8) | ((uint16_t)b);
}
