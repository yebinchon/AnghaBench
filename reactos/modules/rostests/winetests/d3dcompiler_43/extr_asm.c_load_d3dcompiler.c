
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryA (char*) ;
 int TRUE ;
 void* pD3DAssemble ;
 void* ppD3DPreprocess ;

__attribute__((used)) static BOOL load_d3dcompiler(void)
{
    HMODULE module;

    if (!(module = LoadLibraryA("d3dcompiler_43.dll"))) return FALSE;

    pD3DAssemble = (void*)GetProcAddress(module, "D3DAssemble");
    ppD3DPreprocess = (void*)GetProcAddress(module, "D3DPreprocess");
    return TRUE;
}
