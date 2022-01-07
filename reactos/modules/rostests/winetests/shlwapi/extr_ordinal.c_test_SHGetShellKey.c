
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef int * HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 int ERROR_FILE_NOT_FOUND ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int HRESULT_FROM_WIN32 (int ) ;
 int LocalFree (int*) ;
 int REG_DWORD ;
 int RegCloseKey (int *) ;
 int RegDeleteKeyW (int *,char const*) ;
 int SHKEY_Key_Classes ;
 int SHKEY_Key_Explorer ;
 int SHKEY_Root_HKCU ;
 int SHKEY_Root_HKLM ;
 int SUCCEEDED (int ) ;
 int S_OK ;
 int SetLastError (int) ;
 int TRUE ;
 int ok (int,char*,...) ;
 int * pSHGetShellKey (int,char const*,int ) ;
 int pSKAllocValueW (int,char const*,int *,int *,void**,int*) ;
 int pSKDeleteValueW (int,char const*,int *) ;
 int pSKGetValueW (int,char const*,int *,int *,int*,int*) ;
 int pSKSetValueW (int,char const*,int *,int ,int*,int) ;
 int skip (char*) ;

__attribute__((used)) static void test_SHGetShellKey(void)
{
    static const WCHAR ShellFoldersW[] = { 'S','h','e','l','l',' ','F','o','l','d','e','r','s',0 };
    static const WCHAR WineTestW[] = { 'W','i','n','e','T','e','s','t',0 };

    DWORD *alloc_data, data, size;
    HKEY hkey;
    HRESULT hres;


    SetLastError(0xdeadbeef);
    hkey = pSHGetShellKey(SHKEY_Key_Explorer, ShellFoldersW, FALSE);
    if (hkey)
    {

        RegCloseKey(hkey);

        hkey = pSHGetShellKey(SHKEY_Root_HKLM|SHKEY_Key_Classes, ((void*)0), FALSE);
        ok(hkey != ((void*)0), "hkey = NULL\n");
        RegCloseKey(hkey);
    }

    hkey = pSHGetShellKey(SHKEY_Root_HKCU|SHKEY_Key_Explorer, ShellFoldersW, FALSE);
    ok(hkey != ((void*)0), "hkey = NULL\n");
    RegCloseKey(hkey);

    hkey = pSHGetShellKey(SHKEY_Root_HKLM|SHKEY_Key_Explorer, ShellFoldersW, FALSE);
    ok(hkey != ((void*)0), "hkey = NULL\n");
    RegCloseKey(hkey);

    hkey = pSHGetShellKey(SHKEY_Root_HKLM, WineTestW, FALSE);
    ok(hkey == ((void*)0), "hkey != NULL\n");

    hkey = pSHGetShellKey(SHKEY_Root_HKLM, ((void*)0), FALSE);
    ok(hkey != ((void*)0), "Can't open key\n");
    ok(SUCCEEDED(RegDeleteKeyW(hkey, WineTestW)), "Can't delete key\n");
    RegCloseKey(hkey);

    hkey = pSHGetShellKey(SHKEY_Root_HKLM, WineTestW, TRUE);
    if (!hkey && GetLastError() == ERROR_ACCESS_DENIED)
    {
        skip("Not authorized to create keys\n");
        return;
    }
    ok(hkey != ((void*)0), "Can't create key\n");
    RegCloseKey(hkey);

    size = sizeof(data);
    hres = pSKGetValueW(SHKEY_Root_HKLM, WineTestW, ((void*)0), ((void*)0), &data, &size);
    ok(hres == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), "hres = %x\n", hres);

    data = 1234;
    hres = pSKSetValueW(SHKEY_Root_HKLM, WineTestW, ((void*)0), REG_DWORD, &data, sizeof(DWORD));
    ok(hres == S_OK, "hres = %x\n", hres);

    size = 1;
    hres = pSKGetValueW(SHKEY_Root_HKLM, WineTestW, ((void*)0), ((void*)0), ((void*)0), &size);
    ok(hres == S_OK, "hres = %x\n", hres);
    ok(size == sizeof(DWORD), "size = %d\n", size);

    data = 0xdeadbeef;
    hres = pSKGetValueW(SHKEY_Root_HKLM, WineTestW, ((void*)0), ((void*)0), &data, &size);
    ok(hres == S_OK, "hres = %x\n", hres);
    ok(size == sizeof(DWORD), "size = %d\n", size);
    ok(data == 1234, "data = %d\n", data);

    hres = pSKAllocValueW(SHKEY_Root_HKLM, WineTestW, ((void*)0), ((void*)0), (void**)&alloc_data, &size);
    ok(hres == S_OK, "hres= %x\n", hres);
    ok(size == sizeof(DWORD), "size = %d\n", size);
    if (SUCCEEDED(hres))
    {
        ok(*alloc_data == 1234, "*alloc_data = %d\n", *alloc_data);
        LocalFree(alloc_data);
    }

    hres = pSKDeleteValueW(SHKEY_Root_HKLM, WineTestW, ((void*)0));
    ok(hres == S_OK, "hres = %x\n", hres);

    hres = pSKDeleteValueW(SHKEY_Root_HKLM, WineTestW, ((void*)0));
    ok(hres == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), "hres = %x\n", hres);

    hres = pSKGetValueW(SHKEY_Root_HKLM, WineTestW, ((void*)0), ((void*)0), &data, &size);
    ok(hres == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), "hres = %x\n", hres);

    hkey = pSHGetShellKey(SHKEY_Root_HKLM, ((void*)0), FALSE);
    ok(hkey != ((void*)0), "Can't create key\n");
    ok(SUCCEEDED(RegDeleteKeyW(hkey, WineTestW)), "Can't delete key\n");
    RegCloseKey(hkey);
}
