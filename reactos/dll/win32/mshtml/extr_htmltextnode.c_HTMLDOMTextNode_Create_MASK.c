#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
struct TYPE_10__ {int /*<<< orphan*/  dispex; } ;
struct TYPE_13__ {int /*<<< orphan*/ * nsnode; TYPE_2__ event_target; int /*<<< orphan*/ * vtbl; } ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_12__ {TYPE_5__ node; scalar_t__ nstext; TYPE_3__ IHTMLDOMTextNode_iface; TYPE_1__ IHTMLDOMTextNode2_iface; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  TYPE_4__ HTMLDOMTextNode ;
typedef  TYPE_5__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HTMLDOMTextNode2Vtbl ; 
 int /*<<< orphan*/  HTMLDOMTextNodeImplVtbl ; 
 int /*<<< orphan*/  HTMLDOMTextNodeVtbl ; 
 int /*<<< orphan*/  HTMLDOMTextNode_dispex ; 
 int /*<<< orphan*/  IID_nsIDOMText ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

HRESULT FUNC6(HTMLDocumentNode *doc, nsIDOMNode *nsnode, HTMLDOMNode **node)
{
    HTMLDOMTextNode *ret;
    nsresult nsres;

    ret = FUNC2(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->node.vtbl = &HTMLDOMTextNodeImplVtbl;
    ret->IHTMLDOMTextNode_iface.lpVtbl = &HTMLDOMTextNodeVtbl;
    ret->IHTMLDOMTextNode2_iface.lpVtbl = &HTMLDOMTextNode2Vtbl;

    FUNC3(&ret->node.event_target.dispex, (IUnknown*)&ret->IHTMLDOMTextNode_iface,
            &HTMLDOMTextNode_dispex);

    FUNC0(doc, &ret->node, nsnode);

    nsres = FUNC4(nsnode, &IID_nsIDOMText, (void**)&ret->nstext);
    FUNC1(nsres == NS_OK && (nsIDOMNode*)ret->nstext == ret->node.nsnode);

    /* Share reference with nsnode */
    FUNC5(ret->node.nsnode);

    *node = &ret->node;
    return S_OK;
}