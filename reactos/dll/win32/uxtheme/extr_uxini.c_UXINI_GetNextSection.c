
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PUXINI_FILE ;
typedef char* LPCWSTR ;
typedef int DWORD ;


 char* UXINI_GetNextLine (int ,int*) ;

LPCWSTR UXINI_GetNextSection(PUXINI_FILE uf, DWORD *dwLen)
{
    LPCWSTR lpLine;
    while((lpLine = UXINI_GetNextLine(uf, dwLen))) {

        if(lpLine[0] == '[') {
            lpLine++;
            *dwLen -= 2;
            break;
        }
    }
    return lpLine;
}
