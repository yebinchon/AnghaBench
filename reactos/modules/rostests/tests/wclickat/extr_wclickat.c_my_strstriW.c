
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;


 scalar_t__ towlower (scalar_t__ const) ;

__attribute__((used)) static const WCHAR* my_strstriW(const WCHAR* haystack, const WCHAR* needle)
{
    const WCHAR *h,*n;
    WCHAR first;

    if (!*needle)
        return haystack;




    first=towlower(*needle);
    needle++;
    while (*haystack)
    {
        while (towlower(*haystack)!=first && *haystack)
            haystack++;

        h=haystack+1;
        n=needle;
        while (towlower(*h)==towlower(*n) && *h)
        {
            h++;
            n++;
        }
        if (!*n)
            return haystack;
        haystack++;
    }
    return ((void*)0);
}
