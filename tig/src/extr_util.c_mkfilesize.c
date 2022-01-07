
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum file_size { ____Placeholder_file_size } file_size ;


 int ARRAY_SIZE (char const*) ;
 int FILE_SIZE_UNITS ;
 scalar_t__ string_format (char*,char const*,unsigned long,...) ;

const char *
mkfilesize(unsigned long size, enum file_size format)
{
 static char buf[64 + 1];
 static const char relsize[] = {
  'B', 'K', 'M', 'G', 'T', 'P'
 };

 if (!format)
  return "";

 if (format == FILE_SIZE_UNITS) {
  const char *fmt = "%.0f%c";
  double rsize = size;
  int i;

  for (i = 0; i < ARRAY_SIZE(relsize); i++) {
   if (rsize > 1024.0 && i + 1 < ARRAY_SIZE(relsize)) {
    rsize /= 1024;
    continue;
   }

   size = rsize * 10;
   if (size % 10 > 0)
    fmt = "%.1f%c";

   return string_format(buf, fmt, rsize, relsize[i])
    ? buf : ((void*)0);
  }
 }

 return string_format(buf, "%ld", size) ? buf : ((void*)0);
}
