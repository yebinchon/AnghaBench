#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int ref; TYPE_3__ IPropertyBag_iface; int /*<<< orphan*/  props; TYPE_1__ IPropertyBag2_iface; } ;
typedef  TYPE_2__ PropertyBag ;
typedef  TYPE_3__ IPropertyBag ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  PropertyBag2Vtbl ; 
 int /*<<< orphan*/  PropertyBagVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

HRESULT FUNC6(nsIDOMHTMLElement *nselem, IPropertyBag **ret)
{
    PropertyBag *prop_bag;
    HRESULT hres;

    prop_bag = FUNC3(sizeof(*prop_bag));
    if(!prop_bag)
        return E_OUTOFMEMORY;

    prop_bag->IPropertyBag_iface.lpVtbl  = &PropertyBagVtbl;
    prop_bag->IPropertyBag2_iface.lpVtbl = &PropertyBag2Vtbl;
    prop_bag->ref = 1;

    FUNC5(&prop_bag->props);
    hres = FUNC2(nselem, prop_bag);
    if(FUNC0(hres) || FUNC4(&prop_bag->props)) {
        FUNC1(&prop_bag->IPropertyBag_iface);
        *ret = NULL;
        return hres;
    }

    *ret = &prop_bag->IPropertyBag_iface;
    return S_OK;
}