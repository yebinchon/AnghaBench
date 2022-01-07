
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 int * _wfopen (int *,int *) ;
 int * fopen (char const*,char const*) ;
 int free (int *) ;
 int * u2wlongpath (char const*) ;
 int win32_utf8_wide (char const*,int **,int *) ;

FILE* compat_fopen(const char *filename, const char *mode)
{
 FILE* stream = ((void*)0);
 stream = fopen(filename, mode);






 return stream;
}
