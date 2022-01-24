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
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IEnumWorkItems_iface; } ;
typedef  TYPE_1__ IEnumWorkItems ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ EnumWorkItemsImpl ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  EnumWorkItemsVtbl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  dll_ref ; 

__attribute__((used)) static HRESULT FUNC3(IEnumWorkItems **ret)
{
    EnumWorkItemsImpl *tasks;

    *ret = NULL;

    tasks = FUNC1(FUNC0(), 0, sizeof(*tasks));
    if (!tasks)
        return E_OUTOFMEMORY;

    tasks->IEnumWorkItems_iface.lpVtbl = &EnumWorkItemsVtbl;
    tasks->ref = 1;

    *ret = &tasks->IEnumWorkItems_iface;
    FUNC2(&dll_ref);
    return S_OK;
}