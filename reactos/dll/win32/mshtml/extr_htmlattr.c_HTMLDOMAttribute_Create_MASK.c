#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_16__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/  IHTMLAttributeCollection_iface; } ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_14__ {int ref; TYPE_7__ IHTMLDOMAttribute_iface; int /*<<< orphan*/  name; int /*<<< orphan*/  entry; int /*<<< orphan*/  dispex; TYPE_3__* elem; int /*<<< orphan*/  dispid; TYPE_1__ IHTMLDOMAttribute2_iface; } ;
struct TYPE_13__ {TYPE_2__* attrs; int /*<<< orphan*/  node; } ;
struct TYPE_12__ {int /*<<< orphan*/  attrs; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_3__ HTMLElement ;
typedef  TYPE_4__ HTMLDOMAttribute ;
typedef  TYPE_5__ HTMLAttributeCollection ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HTMLDOMAttribute2Vtbl ; 
 int /*<<< orphan*/  HTMLDOMAttributeVtbl ; 
 int /*<<< orphan*/  HTMLDOMAttribute_dispex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_4__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC8(const WCHAR *name, HTMLElement *elem, DISPID dispid, HTMLDOMAttribute **attr)
{
    HTMLAttributeCollection *col;
    HTMLDOMAttribute *ret;
    HRESULT hres;

    ret = FUNC4(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLDOMAttribute_iface.lpVtbl = &HTMLDOMAttributeVtbl;
    ret->IHTMLDOMAttribute2_iface.lpVtbl = &HTMLDOMAttribute2Vtbl;
    ret->ref = 1;
    ret->dispid = dispid;
    ret->elem = elem;

    FUNC6(&ret->dispex, (IUnknown*)&ret->IHTMLDOMAttribute_iface,
            &HTMLDOMAttribute_dispex);

    /* For attributes attached to an element, (elem,dispid) pair should be valid used for its operation. */
    if(elem) {
        hres = FUNC1(&elem->node, &col);
        if(FUNC0(hres)) {
            FUNC3(&ret->IHTMLDOMAttribute_iface);
            return hres;
        }
        FUNC2(&col->IHTMLAttributeCollection_iface);

        FUNC7(&elem->attrs->attrs, &ret->entry);
    }

    /* For detached attributes we may still do most operations if we have its name available. */
    if(name) {
        ret->name = FUNC5(name);
        if(!ret->name) {
            FUNC3(&ret->IHTMLDOMAttribute_iface);
            return E_OUTOFMEMORY;
        }
    }

    *attr = ret;
    return S_OK;
}