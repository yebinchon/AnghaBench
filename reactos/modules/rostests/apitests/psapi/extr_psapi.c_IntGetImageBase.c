
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwSize; int modBaseAddr; int szExePath; } ;
typedef TYPE_1__ MODULEENTRY32 ;
typedef int * LPVOID ;
typedef int LPCSTR ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateToolhelp32Snapshot (int ,int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int Module32First (scalar_t__,TYPE_1__*) ;
 scalar_t__ Module32Next (scalar_t__,TYPE_1__*) ;
 int TH32CS_SNAPMODULE ;
 scalar_t__ lstrcmpiA (int ,int ) ;

__attribute__((used)) static LPVOID IntGetImageBase(LPCSTR Image)
{
    HANDLE Snap;
    MODULEENTRY32 Module;

    Snap = CreateToolhelp32Snapshot(TH32CS_SNAPMODULE, 0);
    if (Snap == INVALID_HANDLE_VALUE)
    {
        return ((void*)0);
    }

    Module.dwSize = sizeof(MODULEENTRY32);
    if(!Module32First(Snap, &Module))
    {
        CloseHandle(Snap);
        return ((void*)0);
    }

    do
    {
        if (lstrcmpiA(Module.szExePath, Image) == 0)
        {
            CloseHandle(Snap);
            return (LPVOID)Module.modBaseAddr;
        }
    } while(Module32Next(Snap, &Module));

    CloseHandle(Snap);
    return ((void*)0);
}
