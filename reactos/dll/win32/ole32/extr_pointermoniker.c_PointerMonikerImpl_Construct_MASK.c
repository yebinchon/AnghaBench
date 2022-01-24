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
struct TYPE_6__ {int ref; int /*<<< orphan*/ * pObject; TYPE_1__ IMoniker_iface; } ;
typedef  TYPE_2__ PointerMonikerImpl ;
typedef  int /*<<< orphan*/  IUnknown ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  VT_PointerMonikerImpl ; 

__attribute__((used)) static void FUNC2(PointerMonikerImpl* This, IUnknown *punk)
{
    FUNC1("(%p)\n",This);

    /* Initialize the virtual function table. */
    This->IMoniker_iface.lpVtbl = &VT_PointerMonikerImpl;
    This->ref = 1;
    if (punk)
        FUNC0(punk);
    This->pObject      = punk;
}