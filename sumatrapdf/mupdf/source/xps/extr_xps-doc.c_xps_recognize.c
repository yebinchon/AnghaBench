
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static int
xps_recognize(fz_context *ctx, const char *magic)
{
 if (strstr(magic, "/_rels/.rels") || strstr(magic, "\\_rels\\.rels"))
  return 100;
 return 0;
}
