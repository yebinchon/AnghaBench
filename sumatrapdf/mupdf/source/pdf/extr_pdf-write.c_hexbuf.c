
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 unsigned char* fz_malloc (int *,size_t) ;
 int * fz_new_buffer_from_data (int *,unsigned char*,size_t) ;

__attribute__((used)) static fz_buffer *hexbuf(fz_context *ctx, const unsigned char *p, size_t n)
{
 static const char hex[17] = "0123456789abcdef";
 int x = 0;
 size_t len = n * 2 + (n / 32) + 1;
 unsigned char *data = fz_malloc(ctx, len);
 fz_buffer *buf = fz_new_buffer_from_data(ctx, data, len);

 while (n--)
 {
  *data++ = hex[*p >> 4];
  *data++ = hex[*p & 15];
  if (++x == 32)
  {
   *data++ = '\n';
   x = 0;
  }
  p++;
 }

 *data++ = '>';

 return buf;
}
