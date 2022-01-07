
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int IBaseFilter_iface; } ;
typedef TYPE_1__ TestFilterImpl ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int refCount; int synctime; TYPE_3__ IEnumPins_iface; TYPE_1__* base; int (* receive_pin ) (TYPE_1__*,int ,int *,int *) ;scalar_t__ uIndex; } ;
typedef TYPE_2__ IEnumPinsImpl ;
typedef TYPE_3__ IEnumPins ;
typedef int HRESULT ;
typedef int (* FNOBTAINPIN ) (TYPE_1__*,int ,int *,int *) ;


 TYPE_2__* CoTaskMemAlloc (int) ;
 int E_OUTOFMEMORY ;
 int E_POINTER ;
 int IBaseFilter_AddRef (int *) ;
 int IEnumPinsImpl_Vtbl ;
 int S_OK ;

__attribute__((used)) static HRESULT createenumpins(IEnumPins ** ppEnum, FNOBTAINPIN receive_pin, TestFilterImpl *base)
{
    IEnumPinsImpl * pEnumPins;

    if (!ppEnum)
        return E_POINTER;

    pEnumPins = CoTaskMemAlloc(sizeof(IEnumPinsImpl));
    if (!pEnumPins)
    {
        *ppEnum = ((void*)0);
        return E_OUTOFMEMORY;
    }
    pEnumPins->IEnumPins_iface.lpVtbl = &IEnumPinsImpl_Vtbl;
    pEnumPins->refCount = 1;
    pEnumPins->uIndex = 0;
    pEnumPins->receive_pin = receive_pin;
    pEnumPins->base = base;
    IBaseFilter_AddRef(&base->IBaseFilter_iface);
    *ppEnum = &pEnumPins->IEnumPins_iface;

    receive_pin(base, ~0, ((void*)0), &pEnumPins->synctime);

    return S_OK;
}
