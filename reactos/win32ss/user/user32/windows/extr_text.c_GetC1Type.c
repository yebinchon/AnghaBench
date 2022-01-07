
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int WCHAR ;


 int CT_CTYPE1 ;
 int GetStringTypeW (int ,int *,int,int *) ;

__attribute__((used)) static WORD
GetC1Type(WCHAR Ch)
{
    WORD CharType;

    if (! GetStringTypeW(CT_CTYPE1, &Ch, 1, &CharType))
    {
        return 0;
    }

    return CharType;
}
