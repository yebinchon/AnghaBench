
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_strcasecmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int pdf_filter(const char *fn)
{
 const char *extension = strrchr(fn, '.');
 if (extension && !fz_strcasecmp(extension, ".pdf"))
  return 1;
 return 0;
}
