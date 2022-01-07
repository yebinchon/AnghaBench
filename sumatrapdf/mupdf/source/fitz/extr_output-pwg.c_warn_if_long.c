
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_warn (int *,char*,char const*) ;

__attribute__((used)) static void
warn_if_long(fz_context *ctx, const char *str, int ret)
{
 if (ret > 0)
  fz_warn(ctx, "Option %s is too long, truncated.", str);
}
