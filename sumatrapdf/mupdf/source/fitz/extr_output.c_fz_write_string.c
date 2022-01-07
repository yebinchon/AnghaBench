
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_data (int *,int *,char const*,int ) ;
 int strlen (char const*) ;

void
fz_write_string(fz_context *ctx, fz_output *out, const char *s)
{
 fz_write_data(ctx, out, s, strlen(s));
}
