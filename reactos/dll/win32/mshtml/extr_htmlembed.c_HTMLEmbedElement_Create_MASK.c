#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
struct TYPE_9__ {int /*<<< orphan*/ * vtbl; } ;
struct TYPE_11__ {TYPE_2__ node; } ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {TYPE_4__ element; TYPE_1__ IHTMLEmbedElement_iface; } ;
typedef  TYPE_3__ HTMLEmbedElement ;
typedef  TYPE_4__ HTMLElement ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HTMLEmbedElementImplVtbl ; 
 int /*<<< orphan*/  HTMLEmbedElementVtbl ; 
 int /*<<< orphan*/  HTMLEmbedElement_dispex ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_3__* FUNC1 (int) ; 

HRESULT FUNC2(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, HTMLElement **elem)
{
    HTMLEmbedElement *ret;

    ret = FUNC1(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLEmbedElement_iface.lpVtbl = &HTMLEmbedElementVtbl;
    ret->element.node.vtbl = &HTMLEmbedElementImplVtbl;

    FUNC0(&ret->element, doc, nselem, &HTMLEmbedElement_dispex);
    *elem = &ret->element;
    return S_OK;
}