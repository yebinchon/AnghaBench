
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
struct TYPE_3__ {int SizeOfImage; int * lpBaseOfDll; } ;
typedef TYPE_1__ MODULEINFO ;
typedef int * HMODULE ;
typedef int DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 int FreeLibrary (int *) ;
 scalar_t__ GetLastError () ;
 int * GetModuleHandleA (int *) ;
 int GetModuleInformation (int *,int *,TYPE_1__*,int) ;
 int * LoadLibraryA (char*) ;
 int SetLastError (int) ;
 int * hBad ;
 int * hpQI ;
 int * hpQV ;
 int ok (int,char*,scalar_t__,...) ;
 int trace (char*,int) ;

__attribute__((used)) static void test_GetModuleInformation(void)
{
    HMODULE hMod = GetModuleHandleA(((void*)0));
    DWORD *tmp, counter = 0;
    MODULEINFO info;
    DWORD ret;

    SetLastError(0xdeadbeef);
    GetModuleInformation(((void*)0), hMod, &info, sizeof(info));
    ok(GetLastError() == ERROR_INVALID_HANDLE, "expected error=ERROR_INVALID_HANDLE but got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    GetModuleInformation(hpQI, hMod, &info, sizeof(info));
    ok(GetLastError() == ERROR_ACCESS_DENIED, "expected error=ERROR_ACCESS_DENIED but got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    GetModuleInformation(hpQV, hBad, &info, sizeof(info));
    ok(GetLastError() == ERROR_INVALID_HANDLE, "expected error=ERROR_INVALID_HANDLE but got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    GetModuleInformation(hpQV, hMod, &info, sizeof(info)-1);
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "expected error=ERROR_INSUFFICIENT_BUFFER but got %d\n", GetLastError());

    ret = GetModuleInformation(hpQV, hMod, &info, sizeof(info));
    ok(ret == 1, "failed with %d\n", GetLastError());
    ok(info.lpBaseOfDll == hMod, "lpBaseOfDll=%p hMod=%p\n", info.lpBaseOfDll, hMod);

    hMod = LoadLibraryA("shell32.dll");
    ok(hMod != ((void*)0), "Failed to load shell32.dll, error: %u\n", GetLastError());

    ret = GetModuleInformation(hpQV, hMod, &info, sizeof(info));
    ok(ret == 1, "failed with %d\n", GetLastError());
    info.SizeOfImage /= sizeof(DWORD);
    for (tmp = (DWORD *)hMod; info.SizeOfImage; info.SizeOfImage--)
        counter ^= *tmp++;
    trace("xor of shell32: %08x\n", counter);

    FreeLibrary(hMod);
}
