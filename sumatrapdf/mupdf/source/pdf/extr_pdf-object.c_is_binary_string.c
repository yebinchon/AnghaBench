
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 scalar_t__ pdf_to_str_buf (int *,int *) ;
 int pdf_to_str_len (int *,int *) ;

__attribute__((used)) static int is_binary_string(fz_context *ctx, pdf_obj *obj)
{
 unsigned char *s = (unsigned char *)pdf_to_str_buf(ctx, obj);
 int i, n = pdf_to_str_len(ctx, obj);
 for (i = 0; i < n; ++i)
 {
  if (s[i] > 126) return 1;
  if (s[i] < 32 && (s[i] != '\t' && s[i] != '\n' && s[i] != '\r')) return 1;
 }
 return 0;
}
