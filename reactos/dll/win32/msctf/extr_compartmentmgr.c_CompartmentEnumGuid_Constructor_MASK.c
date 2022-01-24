#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct list {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_1__ IEnumGUID_iface; int /*<<< orphan*/  cursor; struct list* values; } ;
typedef  TYPE_1__ IEnumGUID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ CompartmentEnumGuid ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  EnumGUIDVtbl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct list*) ; 

__attribute__((used)) static HRESULT FUNC4(struct list *values, IEnumGUID **ppOut)
{
    CompartmentEnumGuid *This;

    This = FUNC1(FUNC0(),HEAP_ZERO_MEMORY,sizeof(CompartmentEnumGuid));
    if (This == NULL)
        return E_OUTOFMEMORY;

    This->IEnumGUID_iface.lpVtbl= &EnumGUIDVtbl;
    This->refCount = 1;

    This->values = values;
    This->cursor = FUNC3(values);

    *ppOut = &This->IEnumGUID_iface;
    FUNC2("returning %p\n", *ppOut);
    return S_OK;
}