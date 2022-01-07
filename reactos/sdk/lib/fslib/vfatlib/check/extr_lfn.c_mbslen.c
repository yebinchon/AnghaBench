
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 size_t wcstombs (int *,int *,int ) ;

__attribute__((used)) static size_t mbslen(wchar_t x)
{
    wchar_t wstr[] = { x, 0 };
    return wcstombs(((void*)0), wstr, 0);
}
