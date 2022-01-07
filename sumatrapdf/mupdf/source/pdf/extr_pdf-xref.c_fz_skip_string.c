
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;


 int EOF ;
 int fz_peek_byte (int *,int *) ;
 int fz_read_byte (int *,int *) ;

__attribute__((used)) static int fz_skip_string(fz_context *ctx, fz_stream *stm, const char *str)
{
 while (*str)
 {
  int c = fz_peek_byte(ctx, stm);
  if (c == EOF || c != *str++)
   return 1;
  (void)fz_read_byte(ctx, stm);
 }
 return 0;
}
