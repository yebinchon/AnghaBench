
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 int REPLACEMENT ;
 int fz_append_byte (int *,int *,char) ;
 int fz_chartorune (int*,char const*) ;
 int fz_windows_1252_from_unicode (int) ;

__attribute__((used)) static void
write_simple_string(fz_context *ctx, fz_buffer *buf, const char *a, const char *b)
{
 fz_append_byte(ctx, buf, '(');
 while (a < b)
 {
  int c;
  a += fz_chartorune(&c, a);
  c = fz_windows_1252_from_unicode(c);
  if (c < 0) c = REPLACEMENT;
  if (c == '(' || c == ')' || c == '\\')
   fz_append_byte(ctx, buf, '\\');
  fz_append_byte(ctx, buf, c);
 }
 fz_append_byte(ctx, buf, ')');
}
