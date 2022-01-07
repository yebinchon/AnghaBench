
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {scalar_t__ ascii; scalar_t__ crypt; } ;
typedef int pdf_obj ;
typedef int fz_context ;


 int * PDF_FALSE ;
 int * PDF_NULL ;
 int * PDF_TRUE ;
 int fmt_array (int *,struct fmt*,int *) ;
 int fmt_dict (int *,struct fmt*,int *) ;
 int fmt_hex (int *,struct fmt*,int *) ;
 int fmt_name (int *,struct fmt*,int *) ;
 int fmt_puts (int *,struct fmt*,char*) ;
 int fmt_str (int *,struct fmt*,int *) ;
 int fz_snprintf (char*,int,char*,int ,...) ;
 scalar_t__ is_binary_string (int *,int *) ;
 scalar_t__ is_longer_than_hex (int *,int *) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_is_dict (int *,int *) ;
 scalar_t__ pdf_is_indirect (int *,int *) ;
 scalar_t__ pdf_is_int (int *,int *) ;
 scalar_t__ pdf_is_name (int *,int *) ;
 scalar_t__ pdf_is_real (int *,int *) ;
 scalar_t__ pdf_is_string (int *,int *) ;
 int pdf_to_gen (int *,int *) ;
 int pdf_to_int (int *,int *) ;
 int pdf_to_num (int *,int *) ;
 int pdf_to_real (int *,int *) ;
 scalar_t__ pdf_to_str_buf (int *,int *) ;

__attribute__((used)) static void fmt_obj(fz_context *ctx, struct fmt *fmt, pdf_obj *obj)
{
 char buf[256];

 if (obj == PDF_NULL)
  fmt_puts(ctx, fmt, "null");
 else if (obj == PDF_TRUE)
  fmt_puts(ctx, fmt, "true");
 else if (obj == PDF_FALSE)
  fmt_puts(ctx, fmt, "false");
 else if (pdf_is_indirect(ctx, obj))
 {
  fz_snprintf(buf, sizeof buf, "%d %d R", pdf_to_num(ctx, obj), pdf_to_gen(ctx, obj));
  fmt_puts(ctx, fmt, buf);
 }
 else if (pdf_is_int(ctx, obj))
 {
  fz_snprintf(buf, sizeof buf, "%d", pdf_to_int(ctx, obj));
  fmt_puts(ctx, fmt, buf);
 }
 else if (pdf_is_real(ctx, obj))
 {
  fz_snprintf(buf, sizeof buf, "%g", pdf_to_real(ctx, obj));
  fmt_puts(ctx, fmt, buf);
 }
 else if (pdf_is_string(ctx, obj))
 {
  unsigned char *str = (unsigned char *)pdf_to_str_buf(ctx, obj);
  if (fmt->crypt
   || (fmt->ascii && is_binary_string(ctx, obj))
   || (str[0]==0xff && str[1]==0xfe)
   || (str[0]==0xfe && str[1] == 0xff)
   || is_longer_than_hex(ctx, obj)
   )
   fmt_hex(ctx, fmt, obj);
  else
   fmt_str(ctx, fmt, obj);
 }
 else if (pdf_is_name(ctx, obj))
  fmt_name(ctx, fmt, obj);
 else if (pdf_is_array(ctx, obj))
  fmt_array(ctx, fmt, obj);
 else if (pdf_is_dict(ctx, obj))
  fmt_dict(ctx, fmt, obj);
 else
  fmt_puts(ctx, fmt, "<unknown object>");
}
