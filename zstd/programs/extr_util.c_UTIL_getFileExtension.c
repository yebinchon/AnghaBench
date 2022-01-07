
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

const char* UTIL_getFileExtension(const char* infilename)
{
   const char* extension = strrchr(infilename, '.');
   if(!extension || extension==infilename) return "";
   return extension;
}
