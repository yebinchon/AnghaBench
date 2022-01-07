
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int info ;
struct TYPE_4__ {scalar_t__ lpBaseOfDll; int * EntryPoint; } ;
typedef TYPE_1__ MODULEINFO ;
typedef scalar_t__ HMODULE ;
typedef int BOOL ;


 int GetCurrentProcess () ;
 scalar_t__ GetModuleHandleA (char*) ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*,...) ;
 int pK32GetModuleInformation (int ,scalar_t__,TYPE_1__*,int) ;

__attribute__((used)) static void testK32GetModuleInformation(void)
{
    MODULEINFO info;
    HMODULE mod;
    BOOL ret;

    mod = GetModuleHandleA(((void*)0));
    memset(&info, 0xAA, sizeof(info));
    ret = pK32GetModuleInformation(GetCurrentProcess(), mod, &info, sizeof(info));
    ok(ret, "K32GetModuleInformation failed for main module\n");
    ok(info.lpBaseOfDll == mod, "Wrong info.lpBaseOfDll = %p, expected %p\n", info.lpBaseOfDll, mod);
    ok(info.EntryPoint != ((void*)0), "Expected nonzero entrypoint\n");

    mod = GetModuleHandleA("kernel32.dll");
    memset(&info, 0xAA, sizeof(info));
    ret = pK32GetModuleInformation(GetCurrentProcess(), mod, &info, sizeof(info));
    ok(ret, "K32GetModuleInformation failed for kernel32 module\n");
    ok(info.lpBaseOfDll == mod, "Wrong info.lpBaseOfDll = %p, expected %p\n", info.lpBaseOfDll, mod);
    ok(info.EntryPoint != ((void*)0), "Expected nonzero entrypoint\n");
}
