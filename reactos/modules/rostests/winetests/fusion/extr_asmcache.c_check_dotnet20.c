
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ULONG ;
typedef int IAssemblyCache ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 scalar_t__ CLDB_E_FILE_OLDVER ;
 int DeleteFileA (char*) ;
 scalar_t__ E_ACCESSDENIED ;
 int FALSE ;
 scalar_t__ IAssemblyCache_InstallAssembly (int *,int ,char const*,int *) ;
 int IAssemblyCache_Release (int *) ;
 int IAssemblyCache_UninstallAssembly (int *,int ,char const*,int *,int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int create_assembly (char*) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCreateAssemblyCache (int **,int ) ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL check_dotnet20(void)
{
    IAssemblyCache *cache;
    HRESULT hr;
    BOOL ret = FALSE;
    ULONG disp;

    static const WCHAR winedll[] = {'w','i','n','e','.','d','l','l',0};

    create_assembly("wine.dll");

    hr = pCreateAssemblyCache(&cache, 0);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = IAssemblyCache_InstallAssembly(cache, 0, winedll, ((void*)0));
    if (hr == S_OK)
        ret = TRUE;
    else if (hr == CLDB_E_FILE_OLDVER)
        win_skip("Tests can't be run on older .NET version (.NET 1.1)\n");
    else if (hr == E_ACCESSDENIED)
        skip("Not enough rights to install an assembly\n");
    else
        ok(0, "Expected S_OK, got %08x\n", hr);

    DeleteFileA("wine.dll");
    IAssemblyCache_UninstallAssembly(cache, 0, winedll, ((void*)0), &disp);
    IAssemblyCache_Release(cache);
    return ret;
}
