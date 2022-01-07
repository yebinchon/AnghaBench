
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 scalar_t__* malloc (size_t) ;
 int memcpy (scalar_t__*,scalar_t__*,size_t) ;

wchar_t* wcsndup(wchar_t* name, size_t len)
{
   wchar_t *s = malloc((len + 1) * sizeof(wchar_t));
   if (s != ((void*)0))
   {
      memcpy(s, name, len*sizeof(wchar_t));
      s[len] = 0;
   }
   return s;
}
