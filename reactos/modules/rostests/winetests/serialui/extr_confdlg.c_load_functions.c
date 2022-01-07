
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef char* LPCSTR ;


 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryA (char*) ;
 int hdll ;
 int * pCommConfigDialogA ;
 int * pCommConfigDialogW ;
 int * pGetDefaultCommConfigA ;
 int * pGetDefaultCommConfigW ;

__attribute__((used)) static LPCSTR load_functions(void)
{
    LPCSTR ptr;

    ptr = "serialui.dll";
    hdll = LoadLibraryA(ptr);
    if (!hdll) return ptr;

    ptr = "drvCommConfigDialogA";
    pCommConfigDialogA = (VOID *) GetProcAddress(hdll, ptr);
    if (!pCommConfigDialogA) return ptr;

    ptr = "drvCommConfigDialogW";
    pCommConfigDialogW = (VOID *) GetProcAddress(hdll, ptr);
    if (!pCommConfigDialogW) return ptr;

    ptr = "drvGetDefaultCommConfigA";
    pGetDefaultCommConfigA = (VOID *) GetProcAddress(hdll, ptr);
    if (!pGetDefaultCommConfigA) return ptr;

    ptr = "drvGetDefaultCommConfigW";
    pGetDefaultCommConfigW = (VOID *) GetProcAddress(hdll, ptr);
    if (!pGetDefaultCommConfigW) return ptr;


    return ((void*)0);
}
