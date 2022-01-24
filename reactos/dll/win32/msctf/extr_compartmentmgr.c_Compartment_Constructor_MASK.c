#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int refCount; TYPE_2__ ITfCompartment_iface; int /*<<< orphan*/  CompartmentEventSink; int /*<<< orphan*/  variant; int /*<<< orphan*/ * valueData; TYPE_1__ ITfSource_iface; } ;
typedef  TYPE_2__ ITfCompartment ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CompartmentValue ;
typedef  TYPE_3__ Compartment ;

/* Variables and functions */
 int /*<<< orphan*/  CompartmentSourceVtbl ; 
 int /*<<< orphan*/  CompartmentVtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(CompartmentValue *valueData, ITfCompartment **ppOut)
{
    Compartment *This;

    This = FUNC1(FUNC0(),HEAP_ZERO_MEMORY,sizeof(Compartment));
    if (This == NULL)
        return E_OUTOFMEMORY;

    This->ITfCompartment_iface.lpVtbl= &CompartmentVtbl;
    This->ITfSource_iface.lpVtbl = &CompartmentSourceVtbl;
    This->refCount = 1;

    This->valueData = valueData;
    FUNC3(&This->variant);

    FUNC4(&This->CompartmentEventSink);

    *ppOut = &This->ITfCompartment_iface;
    FUNC2("returning %p\n", *ppOut);
    return S_OK;
}