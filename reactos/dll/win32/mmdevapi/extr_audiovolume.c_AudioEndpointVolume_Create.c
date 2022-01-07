
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IAudioEndpointVolumeEx_iface; } ;
typedef int MMDevice ;
typedef TYPE_1__ IAudioEndpointVolumeEx ;
typedef int HRESULT ;
typedef TYPE_2__ AEVImpl ;


 int AEVImpl_Vtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;

HRESULT AudioEndpointVolume_Create(MMDevice *parent, IAudioEndpointVolumeEx **ppv)
{
    AEVImpl *This;

    *ppv = ((void*)0);
    This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*This));
    if (!This)
        return E_OUTOFMEMORY;
    This->IAudioEndpointVolumeEx_iface.lpVtbl = &AEVImpl_Vtbl;
    This->ref = 1;

    *ppv = &This->IAudioEndpointVolumeEx_iface;
    return S_OK;
}
