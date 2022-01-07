
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PVOID ;
typedef int PCSTR ;
typedef int HMODULE ;


 int GetModuleHandleW (char*) ;
 int * GetProcAddress (int ,int ) ;

__attribute__((used)) static
PVOID
GetProc(
    PCSTR FunctionName)
{
    HMODULE ModuleHandle;

    ModuleHandle = GetModuleHandleW(L"ws2_32");
    if (!ModuleHandle)
        return ((void*)0);
    return GetProcAddress(ModuleHandle, FunctionName);
}
