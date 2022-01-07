
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int INFCONTEXT ;
typedef int HINF ;
typedef int HANDLE ;
typedef int BOOL ;


 int ARRAYSIZE (int *) ;
 int CSIDL_FLAG_CREATE ;
 int CoInitialize (int *) ;
 int CoUninitialize () ;
 int CreateShortcutsFromSection (int ,int *,int *) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int MAX_PATH ;
 int SHGFP_TYPE_DEFAULT ;
 int SHGetFolderPathAndSubDirW (int *,int,int ,int ,int *,int *) ;
 int SetupFindFirstLine (int ,int ,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetFieldCount (int *) ;
 int SetupGetIntField (int *,int,int*) ;
 int SetupGetStringFieldW (int *,int,int *,int ,int *) ;
 int TRUE ;

__attribute__((used)) static BOOL CreateShortcuts(HINF hinf, LPCWSTR szSection)
{
    INFCONTEXT Context;
    WCHAR szPath[MAX_PATH];
    WCHAR szFolder[MAX_PATH];
    WCHAR szFolderSection[MAX_PATH];
    INT csidl;

    CoInitialize(((void*)0));

    if (!SetupFindFirstLine(hinf, szSection, ((void*)0), &Context))
        return FALSE;

    do
    {
        if (SetupGetFieldCount(&Context) < 2)
            continue;

        if (!SetupGetStringFieldW(&Context, 0, szFolderSection, ARRAYSIZE(szFolderSection), ((void*)0)))
            continue;

        if (!SetupGetIntField(&Context, 1, &csidl))
            continue;

        if (!SetupGetStringFieldW(&Context, 2, szFolder, ARRAYSIZE(szFolder), ((void*)0)))
            continue;

        if (FAILED(SHGetFolderPathAndSubDirW(((void*)0), csidl|CSIDL_FLAG_CREATE, (HANDLE)-1, SHGFP_TYPE_DEFAULT, szFolder, szPath)))
            continue;

        CreateShortcutsFromSection(hinf, szFolderSection, szPath);

    } while (SetupFindNextLine(&Context, &Context));

    CoUninitialize();

    return TRUE;
}
