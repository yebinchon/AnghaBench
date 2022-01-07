
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 scalar_t__ pdf_to_str_buf (int *,int *) ;
 int pdf_to_str_len (int *,int *) ;
 scalar_t__ strchr (char*,unsigned char) ;

__attribute__((used)) static int is_longer_than_hex(fz_context *ctx, pdf_obj *obj)
{
 unsigned char *s = (unsigned char *)pdf_to_str_buf(ctx, obj);
 int i, n = pdf_to_str_len(ctx, obj);
 int m = 0;
 for (i = 0; i < n; ++i)
 {
  if (s[i] > 126)
   m += 4;
  else if (s[i] == 0)
   m += 4;
  else if (strchr("\n\r\t\b\f()\\", s[i]))
   m += 2;
  else if (s[i] < 32)
   m += 4;
  else
   m += 1;
 }
 return m > (n * 2);
}
