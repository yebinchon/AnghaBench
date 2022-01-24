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
struct TYPE_6__ {int ref; TYPE_1__ IHTMLDOMImplementation_iface; int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IHTMLDOMImplementation ;
typedef  TYPE_2__ HTMLDOMImplementation ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  HTMLDOMImplementationVtbl ; 
 int /*<<< orphan*/  HTMLDOMImplementation_dispex ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC2(IHTMLDOMImplementation **ret)
{
    HTMLDOMImplementation *dom_implementation;

    dom_implementation = FUNC0(sizeof(*dom_implementation));
    if(!dom_implementation)
        return E_OUTOFMEMORY;

    dom_implementation->IHTMLDOMImplementation_iface.lpVtbl = &HTMLDOMImplementationVtbl;
    dom_implementation->ref = 1;

    FUNC1(&dom_implementation->dispex, (IUnknown*)&dom_implementation->IHTMLDOMImplementation_iface,
            &HTMLDOMImplementation_dispex);

    *ret = &dom_implementation->IHTMLDOMImplementation_iface;
    return S_OK;
}