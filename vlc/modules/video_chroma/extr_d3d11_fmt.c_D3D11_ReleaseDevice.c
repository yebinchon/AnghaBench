
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ context_mutex; scalar_t__ owner; int * d3ddevice; int * d3dcontext; } ;
typedef TYPE_1__ d3d11_device_t ;


 int CloseHandle (scalar_t__) ;
 int ID3D11DeviceContext_Flush (int *) ;
 int ID3D11DeviceContext_Release (int *) ;
 int ID3D11Device_Release (int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;

void D3D11_ReleaseDevice(d3d11_device_t *d3d_dev)
{
    if (d3d_dev->d3dcontext)
    {
        ID3D11DeviceContext_Flush(d3d_dev->d3dcontext);
        ID3D11DeviceContext_Release(d3d_dev->d3dcontext);
        d3d_dev->d3dcontext = ((void*)0);
    }
    if (d3d_dev->d3ddevice)
    {
        ID3D11Device_Release(d3d_dev->d3ddevice);
        d3d_dev->d3ddevice = ((void*)0);
    }







}
