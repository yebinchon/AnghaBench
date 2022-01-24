#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {TYPE_2__ ITfCompartmentMgr_iface; int /*<<< orphan*/  values; int /*<<< orphan*/ * pUnkOuter; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ CompartmentMgr ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  CompartmentMgrVtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  E_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

HRESULT FUNC8(IUnknown *pUnkOuter, REFIID riid, IUnknown **ppOut)
{
    CompartmentMgr *This;

    if (!ppOut)
        return E_POINTER;

    if (pUnkOuter && !FUNC5 (riid, &IID_IUnknown))
        return CLASS_E_NOAGGREGATION;

    This = FUNC2(FUNC1(),HEAP_ZERO_MEMORY,sizeof(CompartmentMgr));
    if (This == NULL)
        return E_OUTOFMEMORY;

    This->ITfCompartmentMgr_iface.lpVtbl = &CompartmentMgrVtbl;
    This->pUnkOuter = pUnkOuter;
    FUNC7(&This->values);

    if (pUnkOuter)
    {
        *ppOut = (IUnknown*)&This->ITfCompartmentMgr_iface;
        FUNC6("returning %p\n", *ppOut);
        return S_OK;
    }
    else
    {
        HRESULT hr;
        hr = FUNC4(&This->ITfCompartmentMgr_iface, riid, (void**)ppOut);
        if (FUNC0(hr))
            FUNC3(FUNC1(),0,This);
        return hr;
    }
}