
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;


 int EOF ;
 int FZ_ERROR_GENERIC ;
 int fz_read_byte (int *,int *) ;
 int fz_throw (int *,int ,char*) ;

void fz_read_string(fz_context *ctx, fz_stream *stm, char *buffer, int len)
{
 int c;
 do
 {
  if (len <= 0)
   fz_throw(ctx, FZ_ERROR_GENERIC, "Buffer overrun reading null terminated string");

  c = fz_read_byte(ctx, stm);
  if (c == EOF)
   fz_throw(ctx, FZ_ERROR_GENERIC, "EOF reading null terminated string");
  *buffer++ = c;
  len--;
 }
 while (c != 0);
}
