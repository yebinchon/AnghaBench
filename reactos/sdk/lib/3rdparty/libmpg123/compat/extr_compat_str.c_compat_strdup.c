
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char* compat_strdup(const char *src)
{
 char *dest = ((void*)0);
 if(src)
 {
  size_t len;
  len = strlen(src)+1;
  if((dest = malloc(len)))
   memcpy(dest, src, len);
 }
 return dest;
}
