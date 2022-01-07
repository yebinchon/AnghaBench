
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__ INT ;


 scalar_t__ lstrlenW (scalar_t__ const*) ;

__attribute__((used)) static INT
GetMultiSzLength(const WCHAR *pszz)
{
    INT Len, TotalLen = 0;
    for (;;)
    {
        Len = lstrlenW(pszz);
        TotalLen += Len + 1;
        pszz += Len + 1;
        if (*pszz == 0)
            break;
    }
    ++TotalLen;
    return TotalLen;
}
