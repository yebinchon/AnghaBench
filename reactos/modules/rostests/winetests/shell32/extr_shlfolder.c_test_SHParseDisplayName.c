
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__ UINT ;
typedef scalar_t__ LPITEMIDLIST ;
typedef int IShellFolder ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetSystemDirectoryW (scalar_t__*,int) ;
 scalar_t__ GetSystemWow64DirectoryW (scalar_t__*,int) ;
 int GetWindowsDirectoryW (scalar_t__*,int) ;
 int ILFree (scalar_t__) ;
 scalar_t__ ILIsEqual (scalar_t__,scalar_t__) ;
 scalar_t__ IShellFolder_ParseDisplayName (int *,int *,int *,scalar_t__*,int *,scalar_t__*,int *) ;
 int IShellFolder_Release (int *) ;
 int MAX_PATH ;
 scalar_t__ SHGetDesktopFolder (int **) ;
 scalar_t__ SHParseDisplayName (scalar_t__*,int *,scalar_t__*,int ,int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ TRUE ;
 scalar_t__ broken (int) ;
 scalar_t__* get_empty_cddrive () ;
 int ok (int,char*,...) ;
 int pIsWow64Process (int ,scalar_t__*) ;
 int skip (char*) ;

__attribute__((used)) static void test_SHParseDisplayName(void)
{
    LPITEMIDLIST pidl1, pidl2;
    IShellFolder *desktop;
    WCHAR dirW[MAX_PATH];
    WCHAR nameW[10];
    WCHAR *cdrom;
    HRESULT hr;
    BOOL ret, is_wow64;

if (0)
{

    SHParseDisplayName(((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
    nameW[0] = 0;
    SHParseDisplayName(nameW, ((void*)0), ((void*)0), 0, ((void*)0));
}

    pidl1 = (LPITEMIDLIST)0xdeadbeef;
    hr = SHParseDisplayName(((void*)0), ((void*)0), &pidl1, 0, ((void*)0));
    ok(broken(hr == E_OUTOFMEMORY) ||
       hr == E_INVALIDARG, "failed %08x\n", hr);
    ok(pidl1 == 0, "expected null ptr, got %p\n", pidl1);


    nameW[0] = 0;
    hr = SHParseDisplayName(nameW, ((void*)0), &pidl1, 0, ((void*)0));
    ok(hr == S_OK, "failed %08x\n", hr);
    hr = SHGetDesktopFolder(&desktop);
    ok(hr == S_OK, "failed %08x\n", hr);
    hr = IShellFolder_ParseDisplayName(desktop, ((void*)0), ((void*)0), nameW, ((void*)0), &pidl2, ((void*)0));
    ok(hr == S_OK, "failed %08x\n", hr);
    ret = ILIsEqual(pidl1, pidl2);
    ok(ret == TRUE, "expected equal idls\n");
    ILFree(pidl1);
    ILFree(pidl2);


    GetWindowsDirectoryW( dirW, MAX_PATH );

    hr = SHParseDisplayName(dirW, ((void*)0), &pidl1, 0, ((void*)0));
    ok(hr == S_OK, "failed %08x\n", hr);
    hr = IShellFolder_ParseDisplayName(desktop, ((void*)0), ((void*)0), dirW, ((void*)0), &pidl2, ((void*)0));
    ok(hr == S_OK, "failed %08x\n", hr);

    ret = ILIsEqual(pidl1, pidl2);
    ok(ret == TRUE, "expected equal idls\n");
    ILFree(pidl1);
    ILFree(pidl2);


    if (!pIsWow64Process || !pIsWow64Process( GetCurrentProcess(), &is_wow64 )) is_wow64 = FALSE;
    if (is_wow64)
    {
        UINT len;
        *dirW = 0;
        len = GetSystemDirectoryW(dirW, MAX_PATH);
        ok(len > 0, "GetSystemDirectoryW failed: %u\n", GetLastError());
        hr = SHParseDisplayName(dirW, ((void*)0), &pidl1, 0, ((void*)0));
        ok(hr == S_OK, "failed %08x\n", hr);
        *dirW = 0;
        len = GetSystemWow64DirectoryW(dirW, MAX_PATH);
        ok(len > 0, "GetSystemWow64DirectoryW failed: %u\n", GetLastError());
        hr = SHParseDisplayName(dirW, ((void*)0), &pidl2, 0, ((void*)0));
        ok(hr == S_OK, "failed %08x\n", hr);
        ret = ILIsEqual(pidl1, pidl2);
        ok(ret == FALSE, "expected different idls\n");
        ILFree(pidl1);
        ILFree(pidl2);
    }

    IShellFolder_Release(desktop);

    cdrom = get_empty_cddrive();
    if (!cdrom)
        skip("No empty cdrom drive found, skipping test\n");
    else
    {
        hr = SHParseDisplayName(cdrom, ((void*)0), &pidl1, 0, ((void*)0));
        ok(hr == S_OK, "failed %08x\n", hr);
        if (SUCCEEDED(hr)) ILFree(pidl1);
    }
}
