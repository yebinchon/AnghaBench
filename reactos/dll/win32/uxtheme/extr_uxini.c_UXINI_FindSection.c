
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PUXINI_FILE ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CompareStringW (int ,int ,int ,int ,int ,int) ;
 int FALSE ;
 int LOCALE_SYSTEM_DEFAULT ;
 int NORM_IGNORECASE ;
 int TRUE ;
 int UXINI_GetNextSection (int ,int *) ;

BOOL UXINI_FindSection(PUXINI_FILE uf, LPCWSTR lpName)
{
    LPCWSTR lpSection;
    DWORD dwLen;
    while((lpSection = UXINI_GetNextSection(uf, &dwLen))) {
        if(CompareStringW(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE, lpSection, dwLen, lpName, -1) == CSTR_EQUAL) {
            return TRUE;
        }
    }
    return FALSE;
}
