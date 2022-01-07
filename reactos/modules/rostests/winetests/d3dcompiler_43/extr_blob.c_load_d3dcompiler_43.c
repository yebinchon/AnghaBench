
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
 void* pD3DCreateBlob ;
 void* pD3DGetBlobPart ;
 void* pD3DStripShader ;

__attribute__((used)) static BOOL load_d3dcompiler_43(void)
{
    HMODULE module;

    if (!(module = LoadLibraryA("d3dcompiler_43.dll"))) return FALSE;

    pD3DCreateBlob = (void*)GetProcAddress(module, "D3DCreateBlob");
    pD3DGetBlobPart = (void*)GetProcAddress(module, "D3DGetBlobPart");
    pD3DStripShader = (void*)GetProcAddress(module, "D3DStripShader");
    return TRUE;
}
