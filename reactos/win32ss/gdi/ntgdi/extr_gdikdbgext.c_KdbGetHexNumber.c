
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int BOOL ;


 int strtoul (char*,char**,int) ;

__attribute__((used)) static
BOOL
KdbGetHexNumber(char *pszNum, ULONG_PTR *pulValue)
{
    char *endptr;


    if ((pszNum[0] == '0') && ((pszNum[1] == 'x') || (pszNum[1] == 'X')))
        pszNum += 2;


    *pulValue = strtoul(pszNum, &endptr, 16);

    return (*endptr == '\0');
}
