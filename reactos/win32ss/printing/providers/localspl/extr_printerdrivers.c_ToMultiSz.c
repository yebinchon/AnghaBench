
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPWSTR ;



__attribute__((used)) static void
ToMultiSz(LPWSTR pString)
{
    while (*pString)
    {
        if (*pString == '|')
            *pString = '\0';
        pString++;
    }
}
