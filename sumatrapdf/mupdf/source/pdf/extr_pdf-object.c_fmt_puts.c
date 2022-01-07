
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {int dummy; } ;
typedef int fz_context ;


 int fmt_putc (int *,struct fmt*,int ) ;

__attribute__((used)) static inline void fmt_puts(fz_context *ctx, struct fmt *fmt, char *s)
{
 while (*s)
  fmt_putc(ctx, fmt, *s++);
}
