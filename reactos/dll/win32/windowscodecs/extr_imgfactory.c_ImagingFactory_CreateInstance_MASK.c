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
struct TYPE_7__ {int ref; TYPE_3__ IWICImagingFactory2_iface; TYPE_1__ IWICComponentFactory_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  TYPE_2__ ImagingFactory ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ComponentFactory_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  ImagingFactory_Vtbl ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

HRESULT FUNC6(REFIID iid, void** ppv)
{
    ImagingFactory *This;
    HRESULT ret;

    FUNC4("(%s,%p)\n", FUNC5(iid), ppv);

    *ppv = NULL;

    This = FUNC1(FUNC0(), 0, sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IWICImagingFactory2_iface.lpVtbl = &ImagingFactory_Vtbl;
    This->IWICComponentFactory_iface.lpVtbl = &ComponentFactory_Vtbl;
    This->ref = 1;

    ret = FUNC2(&This->IWICImagingFactory2_iface, iid, ppv);
    FUNC3(&This->IWICImagingFactory2_iface);

    return ret;
}