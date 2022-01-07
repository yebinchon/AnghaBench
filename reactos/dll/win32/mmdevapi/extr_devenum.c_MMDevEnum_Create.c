
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_3__ IMMDeviceEnumerator_iface; } ;
typedef int REFIID ;
typedef TYPE_1__ MMDevEnumImpl ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IMMDeviceEnumerator_QueryInterface (TYPE_3__*,int ,void**) ;
 int MMDevEnumVtbl ;
 TYPE_1__* MMDevEnumerator ;
 int eCapture ;
 int eRender ;
 int load_devices_from_reg () ;
 int load_driver_devices (int ) ;

HRESULT MMDevEnum_Create(REFIID riid, void **ppv)
{
    MMDevEnumImpl *This = MMDevEnumerator;

    if (!This)
    {
        This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
        *ppv = ((void*)0);
        if (!This)
            return E_OUTOFMEMORY;
        This->ref = 1;
        This->IMMDeviceEnumerator_iface.lpVtbl = &MMDevEnumVtbl;
        MMDevEnumerator = This;

        load_devices_from_reg();
        load_driver_devices(eRender);
        load_driver_devices(eCapture);
    }
    return IMMDeviceEnumerator_QueryInterface(&This->IMMDeviceEnumerator_iface, riid, ppv);
}
