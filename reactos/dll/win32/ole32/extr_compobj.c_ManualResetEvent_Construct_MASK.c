#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_3__ ISynchronize_iface; int /*<<< orphan*/  event; TYPE_1__ ISynchronizeHandle_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  TYPE_2__ MREImpl ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  SynchronizeHandleVtbl ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  vt_ISynchronize ; 

__attribute__((used)) static HRESULT FUNC6(IUnknown *punkouter, REFIID iid, void **ppv)
{
    MREImpl *This = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(MREImpl));
    HRESULT hr;

    if(punkouter)
        FUNC1("Aggregation not implemented.\n");

    This->ref = 1;
    This->ISynchronize_iface.lpVtbl = &vt_ISynchronize;
    This->ISynchronizeHandle_iface.lpVtbl = &SynchronizeHandleVtbl;
    This->event = FUNC0(NULL, TRUE, FALSE, NULL);

    hr = FUNC4(&This->ISynchronize_iface, iid, ppv);
    FUNC5(&This->ISynchronize_iface);
    return hr;
}