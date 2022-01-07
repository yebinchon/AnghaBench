
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {int gen; int num; int crypt; } ;
typedef int pdf_obj ;
typedef int fz_context ;


 int fmt_hex_out ;
 int fmt_putc (int *,struct fmt*,char) ;
 int pdf_encrypt_data (int *,int ,int ,int ,int ,struct fmt*,unsigned char*,int) ;
 scalar_t__ pdf_to_str_buf (int *,int *) ;
 int pdf_to_str_len (int *,int *) ;

__attribute__((used)) static void fmt_hex(fz_context *ctx, struct fmt *fmt, pdf_obj *obj)
{
 unsigned char *s = (unsigned char *)pdf_to_str_buf(ctx, obj);
 int n = pdf_to_str_len(ctx, obj);

 fmt_putc(ctx, fmt, '<');
 pdf_encrypt_data(ctx, fmt->crypt, fmt->num, fmt->gen, fmt_hex_out, fmt, s, n);
 fmt_putc(ctx, fmt, '>');
}
