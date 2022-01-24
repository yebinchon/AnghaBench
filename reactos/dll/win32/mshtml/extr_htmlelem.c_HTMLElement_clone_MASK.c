#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMNode ;
struct TYPE_9__ {int /*<<< orphan*/  doc; } ;
struct TYPE_8__ {TYPE_2__ node; int /*<<< orphan*/  IHTMLElement_iface; scalar_t__ filter; } ;
typedef  TYPE_1__ HTMLElement ;
typedef  TYPE_2__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 

HRESULT FUNC5(HTMLDOMNode *iface, nsIDOMNode *nsnode, HTMLDOMNode **ret)
{
    HTMLElement *This = FUNC4(iface);
    HTMLElement *new_elem;
    HRESULT hres;

    hres = FUNC1(This->node.doc, nsnode, FALSE, &new_elem);
    if(FUNC0(hres))
        return hres;

    if(This->filter) {
        new_elem->filter = FUNC3(This->filter);
        if(!new_elem->filter) {
            FUNC2(&This->IHTMLElement_iface);
            return E_OUTOFMEMORY;
        }
    }

    *ret = &new_elem->node;
    return S_OK;
}