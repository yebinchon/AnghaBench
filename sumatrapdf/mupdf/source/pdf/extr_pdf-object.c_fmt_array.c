
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {int col; int indent; scalar_t__ tight; } ;
typedef int pdf_obj ;
typedef int fz_context ;


 int fmt_indent (int *,struct fmt*) ;
 int fmt_obj (int *,struct fmt*,int ) ;
 int fmt_putc (int *,struct fmt*,char) ;
 int fmt_sep (int *,struct fmt*) ;
 int pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;

__attribute__((used)) static void fmt_array(fz_context *ctx, struct fmt *fmt, pdf_obj *obj)
{
 int i, n;

 n = pdf_array_len(ctx, obj);
 if (fmt->tight) {
  fmt_putc(ctx, fmt, '[');
  for (i = 0; i < n; i++) {
   fmt_obj(ctx, fmt, pdf_array_get(ctx, obj, i));
   fmt_sep(ctx, fmt);
  }
  fmt_putc(ctx, fmt, ']');
 }
 else {
  fmt_putc(ctx, fmt, '[');
  fmt->indent ++;
  for (i = 0; i < n; i++) {
   if (fmt->col > 60) {
    fmt_putc(ctx, fmt, '\n');
    fmt_indent(ctx, fmt);
   } else {
    fmt_putc(ctx, fmt, ' ');
   }
   fmt_obj(ctx, fmt, pdf_array_get(ctx, obj, i));
  }
  fmt->indent --;
  fmt_putc(ctx, fmt, ' ');
  fmt_putc(ctx, fmt, ']');
  fmt_sep(ctx, fmt);
 }
}
