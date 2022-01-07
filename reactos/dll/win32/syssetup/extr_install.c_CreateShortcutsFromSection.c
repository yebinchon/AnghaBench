
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int INFCONTEXT ;
typedef int HINF ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAYSIZE (int*) ;
 int CreateShortcut (int ,int*,int*,int*,int,int*) ;
 int FALSE ;
 int MAX_PATH ;
 int SetupFindFirstLine (int ,int ,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetFieldCount (int *) ;
 int SetupGetIntField (int *,int,int*) ;
 int SetupGetStringFieldW (int *,int,int*,int ,int *) ;
 int TRUE ;
 int wcscat (int*,char*) ;

__attribute__((used)) static BOOL CreateShortcutsFromSection(HINF hinf, LPWSTR pszSection, LPCWSTR pszFolder)
{
    INFCONTEXT Context;
    DWORD dwFieldCount;
    INT iIconNr;
    WCHAR szCommand[MAX_PATH];
    WCHAR szName[MAX_PATH];
    WCHAR szDescription[MAX_PATH];
    WCHAR szDirectory[MAX_PATH];

    if (!SetupFindFirstLine(hinf, pszSection, ((void*)0), &Context))
        return FALSE;

    do
    {
        dwFieldCount = SetupGetFieldCount(&Context);
        if (dwFieldCount < 3)
            continue;

        if (!SetupGetStringFieldW(&Context, 1, szCommand, ARRAYSIZE(szCommand), ((void*)0)))
            continue;

        if (!SetupGetStringFieldW(&Context, 2, szName, ARRAYSIZE(szName), ((void*)0)))
            continue;

        if (!SetupGetStringFieldW(&Context, 3, szDescription, ARRAYSIZE(szDescription), ((void*)0)))
            continue;

        if (dwFieldCount < 4 || !SetupGetIntField(&Context, 4, &iIconNr))
            iIconNr = -1;

        if (dwFieldCount < 5 || !SetupGetStringFieldW(&Context, 5, szDirectory, ARRAYSIZE(szDirectory), ((void*)0)))
            szDirectory[0] = L'\0';

        wcscat(szName, L".lnk");

        CreateShortcut(pszFolder, szName, szCommand, szDescription, iIconNr, szDirectory);

    } while (SetupFindNextLine(&Context, &Context));

    return TRUE;
}
