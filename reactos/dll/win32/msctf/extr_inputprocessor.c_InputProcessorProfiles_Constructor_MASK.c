#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int refCount; TYPE_3__ ITfInputProcessorProfiles_iface; int /*<<< orphan*/  LanguageProfileNotifySink; int /*<<< orphan*/  currentLanguage; TYPE_2__ ITfInputProcessorProfileMgr_iface; TYPE_1__ ITfSource_iface; } ;
typedef  TYPE_4__ InputProcessorProfiles ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  InputProcessorProfileMgrVtbl ; 
 int /*<<< orphan*/  InputProcessorProfilesSourceVtbl ; 
 int /*<<< orphan*/  InputProcessorProfilesVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

HRESULT FUNC5(IUnknown *pUnkOuter, IUnknown **ppOut)
{
    InputProcessorProfiles *This;
    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    This = FUNC2(FUNC0(),HEAP_ZERO_MEMORY,sizeof(InputProcessorProfiles));
    if (This == NULL)
        return E_OUTOFMEMORY;

    This->ITfInputProcessorProfiles_iface.lpVtbl= &InputProcessorProfilesVtbl;
    This->ITfSource_iface.lpVtbl = &InputProcessorProfilesSourceVtbl;
    This->ITfInputProcessorProfileMgr_iface.lpVtbl = &InputProcessorProfileMgrVtbl;
    This->refCount = 1;
    This->currentLanguage = FUNC1();

    FUNC4(&This->LanguageProfileNotifySink);

    *ppOut = (IUnknown *)&This->ITfInputProcessorProfiles_iface;
    FUNC3("returning %p\n", *ppOut);
    return S_OK;
}