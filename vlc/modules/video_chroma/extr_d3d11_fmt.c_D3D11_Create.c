
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int hdll; int compiler_dll; void* OurD3DCompile; } ;
typedef TYPE_1__ d3d11_handle_t ;


 int Direct3D11LoadShaderLibrary () ;
 int FreeLibrary (int ) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibrary (int ) ;
 int TEXT (char*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*) ;

int D3D11_Create(vlc_object_t *obj, d3d11_handle_t *hd3d, bool with_shaders)
{

    hd3d->hdll = LoadLibrary(TEXT("D3D11.DLL"));
    if (!hd3d->hdll)
    {
        msg_Warn(obj, "cannot load d3d11.dll, aborting");
        return VLC_EGENERIC;
    }

    if (with_shaders)
    {
        hd3d->compiler_dll = Direct3D11LoadShaderLibrary();
        if (!hd3d->compiler_dll) {
            msg_Err(obj, "cannot load d3dcompiler.dll, aborting");
            FreeLibrary(hd3d->hdll);
            return VLC_EGENERIC;
        }

        hd3d->OurD3DCompile = (void *)GetProcAddress(hd3d->compiler_dll, "D3DCompile");
        if (!hd3d->OurD3DCompile) {
            msg_Err(obj, "Cannot locate reference to D3DCompile in d3dcompiler DLL");
            FreeLibrary(hd3d->compiler_dll);
            FreeLibrary(hd3d->hdll);
            return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}
