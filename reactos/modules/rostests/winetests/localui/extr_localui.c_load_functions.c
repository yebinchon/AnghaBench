
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef char* LPCSTR ;


 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryA (char*) ;
 int hdll ;
 int * pInitializePrintMonitorUI ;

__attribute__((used)) static LPCSTR load_functions(void)
{
    LPCSTR ptr;

    ptr = "localui.dll";
    hdll = LoadLibraryA(ptr);
    if (!hdll) return ptr;

    ptr = "InitializePrintMonitorUI";
    pInitializePrintMonitorUI = (VOID *) GetProcAddress(hdll, ptr);
    if (!pInitializePrintMonitorUI) return ptr;

    return ((void*)0);
}
