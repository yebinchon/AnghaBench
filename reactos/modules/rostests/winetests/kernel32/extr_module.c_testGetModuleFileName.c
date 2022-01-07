
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bufW ;
typedef int bufA ;
typedef char WCHAR ;
typedef int * HMODULE ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int GetLastError () ;
 int GetModuleFileNameA (int *,char*,int) ;
 int GetModuleFileNameW (int *,char*,int) ;
 int * GetModuleHandleA (char const*) ;
 int MAX_PATH ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int cmpStrAW (char*,char*,int,int) ;
 scalar_t__ is_unicode_enabled ;
 int lstrlenA (char*) ;
 int lstrlenW (char*) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static void testGetModuleFileName(const char* name)
{
    HMODULE hMod;
    char bufA[MAX_PATH];
    WCHAR bufW[MAX_PATH];
    DWORD len1A, len1W = 0, len2A, len2W = 0;

    hMod = (name) ? GetModuleHandleA(name) : ((void*)0);


    memset(bufA, '-', sizeof(bufA));
    SetLastError(0xdeadbeef);
    len1A = GetModuleFileNameA(hMod, bufA, sizeof(bufA));
    ok(GetLastError() == ERROR_SUCCESS ||
       broken(GetLastError() == 0xdeadbeef),
       "LastError was not reset: %u\n", GetLastError());
    ok(len1A > 0, "Getting module filename for handle %p\n", hMod);

    if (is_unicode_enabled)
    {
        memset(bufW, '-', sizeof(bufW));
        SetLastError(0xdeadbeef);
        len1W = GetModuleFileNameW(hMod, bufW, sizeof(bufW) / sizeof(WCHAR));
        ok(GetLastError() == ERROR_SUCCESS ||
           broken(GetLastError() == 0xdeadbeef),
           "LastError was not reset: %u\n", GetLastError());
        ok(len1W > 0, "Getting module filename for handle %p\n", hMod);
    }

    ok(len1A == strlen(bufA), "Unexpected length of GetModuleFilenameA (%d/%d)\n", len1A, lstrlenA(bufA));

    if (is_unicode_enabled)
    {
        ok(len1W == lstrlenW(bufW), "Unexpected length of GetModuleFilenameW (%d/%d)\n", len1W, lstrlenW(bufW));
        ok(cmpStrAW(bufA, bufW, len1A, len1W), "Comparing GetModuleFilenameAW results\n");
    }


    memset(bufA, '-', sizeof(bufA));
    len2A = GetModuleFileNameA(hMod, bufA, len1A / 2);
    ok(len2A > 0, "Getting module filename for handle %p\n", hMod);

    if (is_unicode_enabled)
    {
        memset(bufW, '-', sizeof(bufW));
        len2W = GetModuleFileNameW(hMod, bufW, len1W / 2);
        ok(len2W > 0, "Getting module filename for handle %p\n", hMod);
        ok(cmpStrAW(bufA, bufW, len2A, len2W), "Comparing GetModuleFilenameAW results with buffer too small\n" );
        ok(len1W / 2 == len2W, "Correct length in GetModuleFilenameW with buffer too small (%d/%d)\n", len1W / 2, len2W);
    }

    ok(len1A / 2 == len2A,
       "Correct length in GetModuleFilenameA with buffer too small (%d/%d)\n", len1A / 2, len2A);
}
