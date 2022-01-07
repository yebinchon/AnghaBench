
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {TYPE_2__ IClassFactory_iface; int clsid; scalar_t__ refs; } ;
typedef int REFIID ;
typedef int * REFCLSID ;
typedef int LPVOID ;
typedef TYPE_1__ HandlerCF ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HandlerClassFactoryVtbl ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IClassFactory_QueryInterface (TYPE_2__*,int ,int *) ;

HRESULT HandlerCF_Create(REFCLSID rclsid, REFIID riid, LPVOID *ppv)
{
    HRESULT hr;
    HandlerCF *This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This) return E_OUTOFMEMORY;
    This->IClassFactory_iface.lpVtbl = &HandlerClassFactoryVtbl;
    This->refs = 0;
    This->clsid = *rclsid;

    hr = IClassFactory_QueryInterface(&This->IClassFactory_iface, riid, ppv);
    if (FAILED(hr))
        HeapFree(GetProcessHeap(), 0, This);

    return hr;
}
