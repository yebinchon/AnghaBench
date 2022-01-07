
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szModPath ;
typedef int szModBaseName ;
typedef int * HMODULE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetModuleBaseNameA (int *,int *,char*,int) ;
 int GetModuleFileNameA (int *,char*,int) ;
 int * GetModuleHandleA (int *) ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int * hBad ;
 int * hpQI ;
 int * hpQV ;
 int ok (int,char*,char*,...) ;
 int strcmp (scalar_t__,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strrchr (char*,char) ;

__attribute__((used)) static void test_GetModuleBaseName(void)
{
    HMODULE hMod = GetModuleHandleA(((void*)0));
    char szModPath[MAX_PATH], szModBaseName[MAX_PATH];
    DWORD ret;

    SetLastError(0xdeadbeef);
    GetModuleBaseNameA(((void*)0), hMod, szModBaseName, sizeof(szModBaseName));
    ok(GetLastError() == ERROR_INVALID_HANDLE, "expected error=ERROR_INVALID_HANDLE but got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    GetModuleBaseNameA(hpQI, hMod, szModBaseName, sizeof(szModBaseName));
    ok(GetLastError() == ERROR_ACCESS_DENIED, "expected error=ERROR_ACCESS_DENIED but got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    GetModuleBaseNameA(hpQV, hBad, szModBaseName, sizeof(szModBaseName));
    ok(GetLastError() == ERROR_INVALID_HANDLE, "expected error=ERROR_INVALID_HANDLE but got %d\n", GetLastError());

    ret = GetModuleBaseNameA(hpQV, ((void*)0), szModBaseName, sizeof(szModBaseName));
    if(!ret)
        return;
    ok(ret == strlen(szModBaseName), "szModBaseName=\"%s\" ret=%d\n", szModBaseName, ret);
    GetModuleFileNameA(((void*)0), szModPath, sizeof(szModPath));
    ok(!strcmp(strrchr(szModPath, '\\') + 1, szModBaseName),
       "szModPath=\"%s\" szModBaseName=\"%s\"\n", szModPath, szModBaseName);
}
