
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {int indent; } ;
typedef int fz_context ;


 int fmt_putc (int *,struct fmt*,char) ;

__attribute__((used)) static inline void fmt_indent(fz_context *ctx, struct fmt *fmt)
{
 int i = fmt->indent;
 while (i--) {
  fmt_putc(ctx, fmt, ' ');
  fmt_putc(ctx, fmt, ' ');
 }
}
