
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int SIZE ;
 int __argc ;
 int ** __wargv ;
 int ** malloc (int) ;
 int ** realloc (int **,int) ;

int wadd(wchar_t* name)
{
   wchar_t** _new;
   if ((__argc % SIZE) == 0)
   {
      if (__wargv == ((void*)0))
         _new = malloc(sizeof(wchar_t*) * (1 + SIZE));
      else
         _new = realloc(__wargv, sizeof(wchar_t*) * (__argc + 1 + SIZE));
      if (_new == ((void*)0))
         return -1;
      __wargv = _new;
   }
   __wargv[__argc++] = name;
   __wargv[__argc] = ((void*)0);
   return 0;
}
