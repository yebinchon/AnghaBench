
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int *** __p__wenviron () ;
 int _wcsnicmp (int *,int const*,size_t) ;
 int * wcschr (int *,int) ;
 size_t wcslen (int const*) ;

wchar_t *_wgetenv(const wchar_t *name)
{
   wchar_t **env;
   size_t length = wcslen(name);

   for (env = *__p__wenviron(); *env; env++)
   {
      wchar_t *str = *env;
      wchar_t *pos = wcschr(str, L'=');
      if (pos && ((unsigned int)(pos - str) == length) && !_wcsnicmp(str, name, length))
         return pos + 1;
   }
   return ((void*)0);
}
