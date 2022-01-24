#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_12__ {int ref; TYPE_7__ IHTMLAttributeCollection_iface; int /*<<< orphan*/  dispex; int /*<<< orphan*/  attrs; TYPE_3__* elem; TYPE_2__ IHTMLAttributeCollection3_iface; TYPE_1__ IHTMLAttributeCollection2_iface; } ;
struct TYPE_11__ {TYPE_4__* attrs; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_3__ HTMLElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  TYPE_4__ HTMLAttributeCollection ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  HTMLAttributeCollection2Vtbl ; 
 int /*<<< orphan*/  HTMLAttributeCollection3Vtbl ; 
 int /*<<< orphan*/  HTMLAttributeCollectionVtbl ; 
 int /*<<< orphan*/  HTMLAttributeCollection_dispex ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_4__* FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

HRESULT FUNC5(HTMLDOMNode *iface, HTMLAttributeCollection **ac)
{
    HTMLElement *This = FUNC2(iface);

    if(This->attrs) {
        FUNC0(&This->attrs->IHTMLAttributeCollection_iface);
        *ac = This->attrs;
        return S_OK;
    }

    This->attrs = FUNC1(sizeof(HTMLAttributeCollection));
    if(!This->attrs)
        return E_OUTOFMEMORY;

    This->attrs->IHTMLAttributeCollection_iface.lpVtbl = &HTMLAttributeCollectionVtbl;
    This->attrs->IHTMLAttributeCollection2_iface.lpVtbl = &HTMLAttributeCollection2Vtbl;
    This->attrs->IHTMLAttributeCollection3_iface.lpVtbl = &HTMLAttributeCollection3Vtbl;
    This->attrs->ref = 2;

    This->attrs->elem = This;
    FUNC4(&This->attrs->attrs);
    FUNC3(&This->attrs->dispex, (IUnknown*)&This->attrs->IHTMLAttributeCollection_iface,
            &HTMLAttributeCollection_dispex);

    *ac = This->attrs;
    return S_OK;
}