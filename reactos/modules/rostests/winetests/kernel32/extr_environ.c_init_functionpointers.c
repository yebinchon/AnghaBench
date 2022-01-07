
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryA (char*) ;
 void* pGetComputerNameExA ;
 void* pGetComputerNameExW ;
 void* pGetUserProfileDirectoryA ;
 void* pOpenProcessToken ;

__attribute__((used)) static void init_functionpointers(void)
{
    HMODULE hkernel32 = GetModuleHandleA("kernel32.dll");
    HMODULE hadvapi32 = GetModuleHandleA("advapi32.dll");
    HMODULE huserenv = LoadLibraryA("userenv.dll");

    pGetComputerNameExA = (void *)GetProcAddress(hkernel32, "GetComputerNameExA");
    pGetComputerNameExW = (void *)GetProcAddress(hkernel32, "GetComputerNameExW");
    pOpenProcessToken = (void *)GetProcAddress(hadvapi32, "OpenProcessToken");
    pGetUserProfileDirectoryA = (void *)GetProcAddress(huserenv,
                                                       "GetUserProfileDirectoryA");
}
