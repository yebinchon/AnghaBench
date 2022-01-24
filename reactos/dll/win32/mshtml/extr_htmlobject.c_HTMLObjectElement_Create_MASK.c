#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
struct TYPE_12__ {int /*<<< orphan*/ * vtbl; } ;
struct TYPE_15__ {TYPE_3__ node; } ;
struct TYPE_13__ {TYPE_6__ element; } ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_14__ {TYPE_4__ plugin_container; int /*<<< orphan*/  nsobject; TYPE_2__ IHTMLObjectElement2_iface; TYPE_1__ IHTMLObjectElement_iface; } ;
typedef  TYPE_5__ HTMLObjectElement ;
typedef  TYPE_6__ HTMLElement ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HTMLObjectElement2Vtbl ; 
 int /*<<< orphan*/  HTMLObjectElementImplVtbl ; 
 int /*<<< orphan*/  HTMLObjectElementVtbl ; 
 int /*<<< orphan*/  HTMLObjectElement_dispex ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLObjectElement ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_5__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 

HRESULT FUNC4(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLObjectElement *ret;
    nsresult nsres;

    ret = FUNC2(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLObjectElement_iface.lpVtbl = &HTMLObjectElementVtbl;
    ret->IHTMLObjectElement2_iface.lpVtbl = &HTMLObjectElement2Vtbl;
    ret->plugin_container.element.node.vtbl = &HTMLObjectElementImplVtbl;

    FUNC0(&ret->plugin_container.element, doc, nselem, &HTMLObjectElement_dispex);

    nsres = FUNC3(nselem, &IID_nsIDOMHTMLObjectElement, (void**)&ret->nsobject);
    FUNC1(nsres == NS_OK);

    *elem = &ret->plugin_container.element;
    return S_OK;
}