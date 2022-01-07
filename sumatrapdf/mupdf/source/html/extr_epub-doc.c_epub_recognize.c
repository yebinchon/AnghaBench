
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static int
epub_recognize(fz_context *doc, const char *magic)
{
 if (strstr(magic, "META-INF/container.xml") || strstr(magic, "META-INF\\container.xml"))
  return 200;
 return 0;
}
