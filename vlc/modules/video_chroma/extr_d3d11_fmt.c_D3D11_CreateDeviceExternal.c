
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int owner; void* context_mutex; int * d3ddevice; int feature_level; int * d3dcontext; } ;
typedef TYPE_1__ d3d11_device_t ;
typedef int context_lock ;
typedef int UINT ;
typedef int ID3D11DeviceContext ;
typedef int HRESULT ;
typedef void* HANDLE ;


 int D3D11_CREATE_DEVICE_VIDEO_SUPPORT ;
 int D3D11_GetDriverVersion (int *,TYPE_1__*) ;
 int E_FAIL ;
 int GUID_CONTEXT_MUTEX ;
 int ID3D11DeviceContext_AddRef (int *) ;
 int ID3D11DeviceContext_GetDevice (int *,int **) ;
 int ID3D11DeviceContext_GetPrivateData (int *,int *,int*,void**) ;
 int ID3D11Device_GetCreationFlags (int *) ;
 int ID3D11Device_GetFeatureLevel (int *) ;
 int ID3D11Device_Release (int *) ;
 void* INVALID_HANDLE_VALUE ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int msg_Err (int *,char*) ;

HRESULT D3D11_CreateDeviceExternal(vlc_object_t *obj, ID3D11DeviceContext *d3d11ctx,
                                   bool hw_decoding, d3d11_device_t *out)
{
    HRESULT hr;
    ID3D11DeviceContext_GetDevice( d3d11ctx, &out->d3ddevice );

    if (hw_decoding)
    {
        UINT creationFlags = ID3D11Device_GetCreationFlags(out->d3ddevice);
        if (!(creationFlags & D3D11_CREATE_DEVICE_VIDEO_SUPPORT))
        {
            msg_Err(obj, "the provided D3D11 device doesn't support decoding");
            ID3D11Device_Release(out->d3ddevice);
            out->d3ddevice = ((void*)0);
            return E_FAIL;
        }
    }

    ID3D11DeviceContext_AddRef( d3d11ctx );
    out->d3dcontext = d3d11ctx;
    out->owner = 0;
    out->feature_level = ID3D11Device_GetFeatureLevel(out->d3ddevice );

    HANDLE context_lock = INVALID_HANDLE_VALUE;
    UINT dataSize = sizeof(context_lock);
    hr = ID3D11DeviceContext_GetPrivateData(d3d11ctx, &GUID_CONTEXT_MUTEX, &dataSize, &context_lock);
    if (SUCCEEDED(hr))
        out->context_mutex = context_lock;
    else
        out->context_mutex = INVALID_HANDLE_VALUE;

    D3D11_GetDriverVersion(obj, out);
    return S_OK;
}
