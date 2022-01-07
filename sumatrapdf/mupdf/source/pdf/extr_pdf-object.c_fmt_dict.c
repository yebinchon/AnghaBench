
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {int indent; scalar_t__ tight; } ;
typedef int pdf_obj ;
typedef int fz_context ;


 int fmt_indent (int *,struct fmt*) ;
 int fmt_obj (int *,struct fmt*,int *) ;
 int fmt_putc (int *,struct fmt*,char) ;
 int fmt_puts (int *,struct fmt*,char*) ;
 int fmt_sep (int *,struct fmt*) ;
 int * pdf_dict_get_key (int *,int *,int) ;
 int * pdf_dict_get_val (int *,int *,int) ;
 int pdf_dict_len (int *,int *) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 int pdf_is_indirect (int *,int *) ;

__attribute__((used)) static void fmt_dict(fz_context *ctx, struct fmt *fmt, pdf_obj *obj)
{
 int i, n;
 pdf_obj *key, *val;

 n = pdf_dict_len(ctx, obj);
 if (fmt->tight) {
  fmt_puts(ctx, fmt, "<<");
  for (i = 0; i < n; i++) {
   fmt_obj(ctx, fmt, pdf_dict_get_key(ctx, obj, i));
   fmt_sep(ctx, fmt);
   fmt_obj(ctx, fmt, pdf_dict_get_val(ctx, obj, i));
   fmt_sep(ctx, fmt);
  }
  fmt_puts(ctx, fmt, ">>");
 }
 else {
  fmt_puts(ctx, fmt, "<<\n");
  fmt->indent ++;
  for (i = 0; i < n; i++) {
   key = pdf_dict_get_key(ctx, obj, i);
   val = pdf_dict_get_val(ctx, obj, i);
   fmt_indent(ctx, fmt);
   fmt_obj(ctx, fmt, key);
   fmt_putc(ctx, fmt, ' ');
   if (!pdf_is_indirect(ctx, val) && pdf_is_array(ctx, val))
    fmt->indent ++;
   fmt_obj(ctx, fmt, val);
   fmt_putc(ctx, fmt, '\n');
   if (!pdf_is_indirect(ctx, val) && pdf_is_array(ctx, val))
    fmt->indent --;
  }
  fmt->indent --;
  fmt_indent(ctx, fmt);
  fmt_puts(ctx, fmt, ">>");
 }
}
