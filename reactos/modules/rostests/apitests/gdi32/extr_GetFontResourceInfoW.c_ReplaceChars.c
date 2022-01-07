
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__ INT ;



__attribute__((used)) static void
ReplaceChars(WCHAR *pch, INT Len, WCHAR From, WCHAR To)
{
    while (Len > 0)
    {
        if (*pch == From)
        {
            *pch = To;
        }

        ++pch;
        --Len;
    }
}
