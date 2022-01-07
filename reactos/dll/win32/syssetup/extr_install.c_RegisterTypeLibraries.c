
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int INFCONTEXT ;
typedef int HRESULT ;
typedef int * HMODULE ;
typedef int HINF ;
typedef int BOOL ;


 int ARRAYSIZE (int *) ;
 int CSIDL_SYSTEM ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FatalError (char*,...) ;
 int * LoadLibraryW (int *) ;
 int MAX_PATH ;
 int PathAddBackslash (int *) ;
 int SHGetFolderPathW (int *,int ,int *,int ,int *) ;
 int SetupFindFirstLine (int ,int ,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetIntField (int *,int,int *) ;
 int SetupGetStringFieldW (int *,int,int *,int ,int *) ;
 int TRUE ;
 int __wine_register_resources (int *) ;
 int wcscpy (int ,int *) ;

BOOL
RegisterTypeLibraries(HINF hinf, LPCWSTR szSection)
{
    INFCONTEXT InfContext;
    BOOL res;
    WCHAR szName[MAX_PATH];
    WCHAR szPath[MAX_PATH];
    INT csidl;
    LPWSTR p;
    HMODULE hmod;
    HRESULT hret;


    res = SetupFindFirstLine(hinf, szSection, ((void*)0), &InfContext);
    if (!res) return FALSE;

    do
    {

        if (!SetupGetStringFieldW(&InfContext, 1, szName, ARRAYSIZE(szName), ((void*)0)))
        {
            FatalError("SetupGetStringFieldW failed\n");
            continue;
        }

        if (!SetupGetIntField(&InfContext, 2, &csidl))
            csidl = CSIDL_SYSTEM;

        hret = SHGetFolderPathW(((void*)0), csidl, ((void*)0), 0, szPath);
        if (FAILED(hret))
        {
            FatalError("SHGetFolderPathW failed hret=0x%lx\n", hret);
            continue;
        }

        p = PathAddBackslash(szPath);
        wcscpy(p, szName);

        hmod = LoadLibraryW(szName);
        if (hmod == ((void*)0))
        {
            FatalError("LoadLibraryW failed\n");
            continue;
        }

        __wine_register_resources(hmod);

    } while (SetupFindNextLine(&InfContext, &InfContext));

    return TRUE;
}
