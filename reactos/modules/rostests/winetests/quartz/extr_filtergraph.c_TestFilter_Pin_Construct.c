
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int const* lpVtbl; } ;
struct TYPE_5__ {int refCount; TYPE_2__ IPin_iface; int mtCurrent; int pinInfo; int pCritSec; int * pConnectedTo; } ;
typedef int PIN_INFO ;
typedef int LPCRITICAL_SECTION ;
typedef TYPE_1__ ITestPinImpl ;
typedef int IPinVtbl ;
typedef TYPE_2__ IPin ;
typedef int HRESULT ;
typedef int AM_MEDIA_TYPE ;


 TYPE_1__* CoTaskMemAlloc (int) ;
 int Copy_PinInfo (int *,int const*) ;
 int E_OUTOFMEMORY ;
 int S_OK ;

__attribute__((used)) static HRESULT TestFilter_Pin_Construct(const IPinVtbl *Pin_Vtbl, const PIN_INFO * pPinInfo, AM_MEDIA_TYPE *pinmt,
                                        LPCRITICAL_SECTION pCritSec, IPin ** ppPin)
{
    ITestPinImpl * pPinImpl;

    *ppPin = ((void*)0);

    pPinImpl = CoTaskMemAlloc(sizeof(ITestPinImpl));

    if (!pPinImpl)
        return E_OUTOFMEMORY;

    pPinImpl->refCount = 1;
    pPinImpl->pConnectedTo = ((void*)0);
    pPinImpl->pCritSec = pCritSec;
    Copy_PinInfo(&pPinImpl->pinInfo, pPinInfo);
    pPinImpl->mtCurrent = *pinmt;

    pPinImpl->IPin_iface.lpVtbl = Pin_Vtbl;

    *ppPin = &pPinImpl->IPin_iface;
    return S_OK;
}
