
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_9__ {int refCount; TYPE_3__ ITfInputProcessorProfiles_iface; int LanguageProfileNotifySink; int currentLanguage; TYPE_2__ ITfInputProcessorProfileMgr_iface; TYPE_1__ ITfSource_iface; } ;
typedef TYPE_4__ InputProcessorProfiles ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int GetUserDefaultLCID () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int InputProcessorProfileMgrVtbl ;
 int InputProcessorProfilesSourceVtbl ;
 int InputProcessorProfilesVtbl ;
 int S_OK ;
 int TRACE (char*,int *) ;
 int list_init (int *) ;

HRESULT InputProcessorProfiles_Constructor(IUnknown *pUnkOuter, IUnknown **ppOut)
{
    InputProcessorProfiles *This;
    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(InputProcessorProfiles));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfInputProcessorProfiles_iface.lpVtbl= &InputProcessorProfilesVtbl;
    This->ITfSource_iface.lpVtbl = &InputProcessorProfilesSourceVtbl;
    This->ITfInputProcessorProfileMgr_iface.lpVtbl = &InputProcessorProfileMgrVtbl;
    This->refCount = 1;
    This->currentLanguage = GetUserDefaultLCID();

    list_init(&This->LanguageProfileNotifySink);

    *ppOut = (IUnknown *)&This->ITfInputProcessorProfiles_iface;
    TRACE("returning %p\n", *ppOut);
    return S_OK;
}
