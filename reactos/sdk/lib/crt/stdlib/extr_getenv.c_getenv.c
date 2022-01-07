
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char*** __p__environ () ;
 int _strnicmp (char*,char const*,size_t) ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;

char *getenv(const char *name)
{
   char **env;
   size_t length = strlen(name);

   for (env = *__p__environ(); *env; env++)
   {
      char *str = *env;
      char *pos = strchr(str,'=');
      if (pos && ((unsigned int)(pos - str) == length) && !_strnicmp(str, name, length))
         return pos + 1;
   }
   return ((void*)0);
}
