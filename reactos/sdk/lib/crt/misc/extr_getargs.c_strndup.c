
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

char* strndup(char const* name, size_t len)
{
   char *s = malloc(len + 1);
   if (s != ((void*)0))
   {
      memcpy(s, name, len);
      s[len] = 0;
   }
   return s;
}
