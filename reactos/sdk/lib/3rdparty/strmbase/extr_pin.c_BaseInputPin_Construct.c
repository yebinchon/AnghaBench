
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int IPin_iface; } ;
struct TYPE_17__ {TYPE_1__ pin; } ;
struct TYPE_14__ {int pfnCheckMediaType; } ;
struct TYPE_16__ {TYPE_2__ base; } ;
struct TYPE_15__ {scalar_t__ dir; } ;
typedef TYPE_3__ PIN_INFO ;
typedef int LPCRITICAL_SECTION ;
typedef int LONG ;
typedef int IPinVtbl ;
typedef int IPin ;
typedef int IMemAllocator ;
typedef int HRESULT ;
typedef TYPE_4__ BaseInputPinFuncTable ;
typedef TYPE_5__ BaseInputPin ;


 TYPE_5__* CoTaskMemAlloc (int) ;
 int CoTaskMemFree (TYPE_5__*) ;
 int ERR (char*,scalar_t__) ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int InputPin_Init (int const*,TYPE_3__ const*,TYPE_4__ const*,int ,int *,TYPE_5__*) ;
 scalar_t__ PINDIR_INPUT ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int assert (int) ;

HRESULT BaseInputPin_Construct(const IPinVtbl *InputPin_Vtbl, LONG inputpin_size, const PIN_INFO * pPinInfo,
                               const BaseInputPinFuncTable* vtbl,
                               LPCRITICAL_SECTION pCritSec, IMemAllocator *allocator, IPin ** ppPin)
{
    BaseInputPin * pPinImpl;

    *ppPin = ((void*)0);

    assert(inputpin_size >= sizeof(BaseInputPin));
    assert(vtbl->base.pfnCheckMediaType);

    if (pPinInfo->dir != PINDIR_INPUT)
    {
        ERR("Pin direction(%x) != PINDIR_INPUT\n", pPinInfo->dir);
        return E_INVALIDARG;
    }

    pPinImpl = CoTaskMemAlloc(inputpin_size);

    if (!pPinImpl)
        return E_OUTOFMEMORY;

    if (SUCCEEDED(InputPin_Init(InputPin_Vtbl, pPinInfo, vtbl, pCritSec, allocator, pPinImpl)))
    {
        *ppPin = &pPinImpl->pin.IPin_iface;
        return S_OK;
    }

    CoTaskMemFree(pPinImpl);
    return E_FAIL;
}
