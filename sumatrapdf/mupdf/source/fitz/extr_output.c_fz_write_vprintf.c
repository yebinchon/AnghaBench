
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_format_string (int *,int *,int ,char const*,int ) ;
 int fz_write_emit ;

void
fz_write_vprintf(fz_context *ctx, fz_output *out, const char *fmt, va_list args)
{
 fz_format_string(ctx, out, fz_write_emit, fmt, args);
}
