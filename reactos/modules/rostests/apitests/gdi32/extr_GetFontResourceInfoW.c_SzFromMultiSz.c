
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int INT ;


 int GetMultiSzLength (scalar_t__*) ;
 int ReplaceChars (scalar_t__*,int,int,int) ;

__attribute__((used)) static void
SzFromMultiSz(WCHAR *pszz)
{
    INT Length = GetMultiSzLength(pszz);

    if (Length > 0)
    {
        ReplaceChars(pszz, Length - 1, L'\0', L'|');
        pszz[Length - 1] = 0;
    }
    else
    {
        pszz[0] = 0;
    }

}
