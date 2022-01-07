
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;


 int EOF ;
 int fz_peek_byte (int *,int *) ;
 int fz_read_byte (int *,int *) ;

char *
fz_read_line(fz_context *ctx, fz_stream *stm, char *mem, size_t n)
{
 char *s = mem;
 int c = EOF;
 while (n > 1)
 {
  c = fz_read_byte(ctx, stm);
  if (c == EOF)
   break;
  if (c == '\r') {
   c = fz_peek_byte(ctx, stm);
   if (c == '\n')
    fz_read_byte(ctx, stm);
   break;
  }
  if (c == '\n')
   break;
  *s++ = c;
  n--;
 }
 if (n)
  *s = '\0';
 return (s == mem && c == EOF) ? ((void*)0) : mem;
}
