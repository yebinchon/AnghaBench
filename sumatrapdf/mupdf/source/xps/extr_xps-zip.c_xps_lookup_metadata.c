
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_document ;
typedef int fz_context ;


 scalar_t__ fz_strlcpy (char*,char*,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
xps_lookup_metadata(fz_context *ctx, fz_document *doc_, const char *key, char *buf, int size)
{
 if (!strcmp(key, "format"))
  return (int)fz_strlcpy(buf, "XPS", size);
 return -1;
}
