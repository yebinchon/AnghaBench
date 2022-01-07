
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_emit ;
 int fz_format_string (int *,int *,int ,char const*,int ) ;

void
fz_append_vprintf(fz_context *ctx, fz_buffer *buffer, const char *fmt, va_list args)
{
 fz_format_string(ctx, buffer, fz_append_emit, fmt, args);
}
