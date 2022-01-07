
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 size_t wcstombs (char*,int *,size_t) ;

__attribute__((used)) static size_t wctombs(char *dest, wchar_t x)
{
    wchar_t wstr[] = { x, 0 };
    size_t size = wcstombs(((void*)0), wstr, 0);
    if (size != (size_t) - 1)
 size = wcstombs(dest, wstr, size + 1);
    return size;
}
