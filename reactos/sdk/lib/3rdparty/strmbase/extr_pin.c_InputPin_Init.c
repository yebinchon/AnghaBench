
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_8__ {int const* lpVtbl; } ;
struct TYPE_9__ {int refCount; double dRate; TYPE_1__ IPin_iface; int * pFuncsTable; int mtCurrent; int pinInfo; scalar_t__ tStop; scalar_t__ tStart; int pCritSec; int * pConnectedTo; } ;
struct TYPE_12__ {int end_of_stream; int flushing; TYPE_3__ IMemInputPin_iface; TYPE_2__ pin; int * preferred_allocator; int * pAllocator; TYPE_4__ const* pFuncsTable; } ;
struct TYPE_11__ {int base; } ;
typedef int PIN_INFO ;
typedef int LPCRITICAL_SECTION ;
typedef int IPinVtbl ;
typedef int IMemAllocator ;
typedef int HRESULT ;
typedef TYPE_4__ BaseInputPinFuncTable ;
typedef TYPE_5__ BaseInputPin ;
typedef int AM_MEDIA_TYPE ;


 int Copy_PinInfo (int *,int const*) ;
 int FALSE ;
 int IMemAllocator_AddRef (int *) ;
 int MemInputPin_Vtbl ;
 int S_OK ;
 int TRACE (char*) ;
 int ZeroMemory (int *,int) ;

__attribute__((used)) static HRESULT InputPin_Init(const IPinVtbl *InputPin_Vtbl, const PIN_INFO * pPinInfo,
                             const BaseInputPinFuncTable* vtbl,
                             LPCRITICAL_SECTION pCritSec, IMemAllocator *allocator, BaseInputPin * pPinImpl)
{
    TRACE("\n");


    pPinImpl->pin.refCount = 1;
    pPinImpl->pin.pConnectedTo = ((void*)0);
    pPinImpl->pin.pCritSec = pCritSec;
    pPinImpl->pin.tStart = 0;
    pPinImpl->pin.tStop = 0;
    pPinImpl->pin.dRate = 1.0;
    Copy_PinInfo(&pPinImpl->pin.pinInfo, pPinInfo);
    ZeroMemory(&pPinImpl->pin.mtCurrent, sizeof(AM_MEDIA_TYPE));
    pPinImpl->pin.pFuncsTable = &vtbl->base;


    pPinImpl->pFuncsTable = vtbl;
    pPinImpl->pAllocator = pPinImpl->preferred_allocator = allocator;
    if (pPinImpl->preferred_allocator)
        IMemAllocator_AddRef(pPinImpl->preferred_allocator);
    pPinImpl->pin.IPin_iface.lpVtbl = InputPin_Vtbl;
    pPinImpl->IMemInputPin_iface.lpVtbl = &MemInputPin_Vtbl;
    pPinImpl->flushing = pPinImpl->end_of_stream = FALSE;

    return S_OK;
}
