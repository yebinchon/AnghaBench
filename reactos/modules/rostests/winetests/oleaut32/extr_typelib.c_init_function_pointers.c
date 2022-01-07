
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 void* pActivateActCtx ;
 void* pCreateActCtxW ;
 void* pDeactivateActCtx ;
 void* pIsWow64Process ;
 void* pRegDeleteKeyExW ;
 void* pRegisterTypeLibForUser ;
 void* pReleaseActCtx ;
 void* pUnRegisterTypeLibForUser ;

__attribute__((used)) static void init_function_pointers(void)
{
    HMODULE hmod = GetModuleHandleA("oleaut32.dll");
    HMODULE hk32 = GetModuleHandleA("kernel32.dll");
    HMODULE hadv = GetModuleHandleA("advapi32.dll");

    pRegisterTypeLibForUser = (void *)GetProcAddress(hmod, "RegisterTypeLibForUser");
    pUnRegisterTypeLibForUser = (void *)GetProcAddress(hmod, "UnRegisterTypeLibForUser");
    pActivateActCtx = (void *)GetProcAddress(hk32, "ActivateActCtx");
    pCreateActCtxW = (void *)GetProcAddress(hk32, "CreateActCtxW");
    pDeactivateActCtx = (void *)GetProcAddress(hk32, "DeactivateActCtx");
    pReleaseActCtx = (void *)GetProcAddress(hk32, "ReleaseActCtx");
    pIsWow64Process = (void *)GetProcAddress(hk32, "IsWow64Process");
    pRegDeleteKeyExW = (void*)GetProcAddress(hadv, "RegDeleteKeyExW");
}
