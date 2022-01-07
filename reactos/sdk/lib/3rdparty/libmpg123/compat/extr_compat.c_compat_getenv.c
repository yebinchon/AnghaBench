
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * _wgetenv (int *) ;
 char* compat_strdup (char*) ;
 int free (int *) ;
 char* getenv (char const*) ;
 scalar_t__ win32_utf8_wide (char const*,int **,int *) ;
 int win32_wide_utf8 (int *,char**,int *) ;

char *compat_getenv(const char* name)
{
 char *ret = ((void*)0);
 ret = getenv(name);
 if(ret)
  ret = compat_strdup(ret);

 return ret;
}
