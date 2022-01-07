
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PRINTPROVIDOR ;
typedef int (* PInitializePrintProvidor ) (int ,int,int *) ;
typedef int LPPRINTPROVIDOR ;
typedef int HMODULE ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 int GetModuleHandleW (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int TRUE ;
 int skip (char*,int ) ;

BOOL
GetLocalsplFuncs(LPPRINTPROVIDOR pp)
{
    HMODULE hLocalspl;
    PInitializePrintProvidor pfnInitializePrintProvidor;


    hLocalspl = GetModuleHandleW(L"localspl");
    if (!hLocalspl)
    {
        skip("GetModuleHandleW failed with error %u!\n", GetLastError());
        return FALSE;
    }


    pfnInitializePrintProvidor = (PInitializePrintProvidor)GetProcAddress(hLocalspl, "InitializePrintProvidor");
    if (!pfnInitializePrintProvidor)
    {
        skip("GetProcAddress failed with error %u!\n", GetLastError());
        return FALSE;
    }


    if (!pfnInitializePrintProvidor(pp, sizeof(PRINTPROVIDOR), ((void*)0)))
    {
        skip("pfnInitializePrintProvidor failed with error %u!\n", GetLastError());
        return FALSE;
    }

    return TRUE;
}
