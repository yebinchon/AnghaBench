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
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_2__ ITaskScheduler_iface; } ;
typedef  TYPE_1__ TaskSchedulerImpl ;
typedef  TYPE_2__* LPVOID ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSTASK_ITaskSchedulerVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__**) ; 
 int /*<<< orphan*/  dll_ref ; 

HRESULT FUNC4(LPVOID *ppObj)
{
    TaskSchedulerImpl *This;
    FUNC3("(%p)\n", ppObj);

    This = FUNC1(FUNC0(), 0, sizeof(*This));
    if (!This)
        return E_OUTOFMEMORY;

    This->ITaskScheduler_iface.lpVtbl = &MSTASK_ITaskSchedulerVtbl;
    This->ref = 1;

    *ppObj = &This->ITaskScheduler_iface;
    FUNC2(&dll_ref);
    return S_OK;
}