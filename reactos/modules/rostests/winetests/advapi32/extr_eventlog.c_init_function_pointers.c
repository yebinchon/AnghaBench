
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 void* pCreateWellKnownSid ;
 void* pGetComputerNameExA ;
 void* pGetEventLogInformation ;
 void* pWow64DisableWow64FsRedirection ;
 void* pWow64RevertWow64FsRedirection ;

__attribute__((used)) static void init_function_pointers(void)
{
    HMODULE hadvapi32 = GetModuleHandleA("advapi32.dll");
    HMODULE hkernel32 = GetModuleHandleA("kernel32.dll");

    pCreateWellKnownSid = (void*)GetProcAddress(hadvapi32, "CreateWellKnownSid");
    pGetEventLogInformation = (void*)GetProcAddress(hadvapi32, "GetEventLogInformation");

    pGetComputerNameExA = (void*)GetProcAddress(hkernel32, "GetComputerNameExA");
    pWow64DisableWow64FsRedirection = (void*)GetProcAddress(hkernel32, "Wow64DisableWow64FsRedirection");
    pWow64RevertWow64FsRedirection = (void*)GetProcAddress(hkernel32, "Wow64RevertWow64FsRedirection");
}
