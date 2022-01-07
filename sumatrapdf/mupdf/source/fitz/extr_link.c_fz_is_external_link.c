
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;



int
fz_is_external_link(fz_context *ctx, const char *uri)
{
 while (*uri >= 'a' && *uri <= 'z')
  ++uri;
 return uri[0] == ':';
}
