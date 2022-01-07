
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float WCHAR ;
typedef int ULONG ;
typedef int IAssemblyCache ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int COR_E_ASSEMBLYEXPECTED ;
 int DeleteFileA (char*) ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INVALID_NAME ;
 int E_INVALIDARG ;
 scalar_t__ GetFileAttributesA (char*) ;
 int GetWindowsDirectoryA (char*,int) ;
 int HRESULT_FROM_WIN32 (int ) ;
 int IASSEMBLYCACHE_UNINSTALL_DISPOSITION_ALREADY_UNINSTALLED ;
 int IASSEMBLYCACHE_UNINSTALL_DISPOSITION_UNINSTALLED ;
 int IAssemblyCache_InstallAssembly (int *,int ,float const*,int *) ;
 int IAssemblyCache_Release (int *) ;
 int IAssemblyCache_UninstallAssembly (int *,int ,float const*,int *,int*) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 int S_FALSE ;
 int S_OK ;
 int create_assembly (char*) ;
 int create_file (char*,int) ;
 int ok (int,char*,...) ;
 int pCreateAssemblyCache (int **,int ) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void test_InstallAssembly(void)
{
    IAssemblyCache *cache;
    HRESULT hr;
    ULONG disp;
    DWORD attr;
    char dllpath[MAX_PATH];

    static const WCHAR empty[] = {0};
    static const WCHAR noext[] = {'f','i','l','e',0};
    static const WCHAR badext[] = {'f','i','l','e','.','b','a','d',0};
    static const WCHAR dllext[] = {'f','i','l','e','.','d','l','l',0};
    static const WCHAR exeext[] = {'f','i','l','e','.','e','x','e',0};
    static const WCHAR testdll[] = {'t','e','s','t','.','d','l','l',0};
    static const WCHAR winedll[] = {'w','i','n','e','.','d','l','l',0};
    static const WCHAR wine[] = {'w','i','n','e',0};

    create_file("test.dll", 100);
    create_assembly("wine.dll");

    hr = pCreateAssemblyCache(&cache, 0);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);


    hr = IAssemblyCache_InstallAssembly(cache, 0, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);


    hr = IAssemblyCache_InstallAssembly(cache, 0, empty, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);


    hr = IAssemblyCache_InstallAssembly(cache, 0, noext, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_INVALID_NAME),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_NAME), got %08x\n", hr);


    hr = IAssemblyCache_InstallAssembly(cache, 0, badext, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_INVALID_NAME),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_NAME), got %08x\n", hr);


    hr = IAssemblyCache_InstallAssembly(cache, 0, dllext, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND),
       "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %08x\n", hr);


    hr = IAssemblyCache_InstallAssembly(cache, 0, exeext, ((void*)0));
    ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND),
       "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %08x\n", hr);


    hr = IAssemblyCache_InstallAssembly(cache, 0, testdll, ((void*)0));
    ok(hr == COR_E_ASSEMBLYEXPECTED,
       "Expected COR_E_ASSEMBLYEXPECTED, got %08x\n", hr);


    hr = IAssemblyCache_InstallAssembly(cache, 0, winedll, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    GetWindowsDirectoryA(dllpath, MAX_PATH);
    strcat(dllpath, "\\assembly\\GAC_MSIL\\wine\\\\1.0.0.0__2d03617b1c31e2f5\\wine.dll");

    attr = GetFileAttributesA(dllpath);
    ok(attr != INVALID_FILE_ATTRIBUTES, "Expected assembly to exist\n");


    disp = 0xf00dbad;
    hr = IAssemblyCache_UninstallAssembly(cache, 0, wine, ((void*)0), &disp);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(disp == IASSEMBLYCACHE_UNINSTALL_DISPOSITION_UNINSTALLED,
       "Expected IASSEMBLYCACHE_UNINSTALL_DISPOSITION_UNINSTALLED, got %d\n", disp);

    attr = GetFileAttributesA(dllpath);
    ok(attr == INVALID_FILE_ATTRIBUTES, "Expected assembly not to exist\n");

    disp = 0xf00dbad;
    hr = IAssemblyCache_UninstallAssembly(cache, 0, wine, ((void*)0), &disp);
    ok(hr == S_FALSE, "Expected S_FALSE, got %08x\n", hr);
    ok(disp == IASSEMBLYCACHE_UNINSTALL_DISPOSITION_ALREADY_UNINSTALLED,
       "Expected IASSEMBLYCACHE_UNINSTALL_DISPOSITION_ALREADY_UNINSTALLED, got %d\n", disp);

    DeleteFileA("test.dll");
    DeleteFileA("wine.dll");
    IAssemblyCache_Release(cache);
}
