
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;
typedef size_t c ;


 int fz_write_byte (int *,int *,char) ;

__attribute__((used)) static void
fz_write_pdf_string(fz_context *ctx, fz_output *out, const unsigned char *str, int len)
{
 int i;

 for (i = 0; i < len; ++i)
  if (str[i] < 32 || str[i] >= 127)
   break;

 if (i < len)
 {
  fz_write_byte(ctx, out, '<');
  for (i = 0; i < len; ++i)
  {
   unsigned char c = str[i];
   fz_write_byte(ctx, out, "0123456789abcdef"[(c>>4)&15]);
   fz_write_byte(ctx, out, "0123456789abcdef"[(c)&15]);
  }
  fz_write_byte(ctx, out, '>');
 }
 else
 {
  fz_write_byte(ctx, out, '(');
  for (i = 0; i < len; ++i)
  {
   unsigned char c = str[i];
   if (c == '(' || c == ')' || c == '\\')
    fz_write_byte(ctx, out, '\\');
   fz_write_byte(ctx, out, c);
  }
  fz_write_byte(ctx, out, ')');
 }
}
