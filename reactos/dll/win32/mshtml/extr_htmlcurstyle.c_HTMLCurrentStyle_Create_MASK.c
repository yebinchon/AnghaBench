#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMWindow ;
typedef  int /*<<< orphan*/  nsIDOMElement ;
typedef  int /*<<< orphan*/  nsIDOMCSSStyleDeclaration ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_17__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_16__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_14__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_19__ {int ref; TYPE_6__ IHTMLCurrentStyle_iface; TYPE_7__* elem; int /*<<< orphan*/  dispex; int /*<<< orphan*/ * nsstyle; TYPE_5__ IHTMLCurrentStyle4_iface; TYPE_4__ IHTMLCurrentStyle3_iface; TYPE_3__ IHTMLCurrentStyle2_iface; } ;
struct TYPE_13__ {TYPE_1__* doc; } ;
struct TYPE_18__ {int /*<<< orphan*/  IHTMLElement_iface; scalar_t__ nselem; TYPE_2__ node; } ;
struct TYPE_12__ {int /*<<< orphan*/  nsdoc; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_6__ IHTMLCurrentStyle ;
typedef  TYPE_7__ HTMLElement ;
typedef  TYPE_8__ HTMLCurrentStyle ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 int /*<<< orphan*/  HTMLCurrentStyle2Vtbl ; 
 int /*<<< orphan*/  HTMLCurrentStyle3Vtbl ; 
 int /*<<< orphan*/  HTMLCurrentStyle4Vtbl ; 
 int /*<<< orphan*/  HTMLCurrentStyleVtbl ; 
 int /*<<< orphan*/  HTMLCurrentStyle_dispex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_8__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

HRESULT FUNC12(HTMLElement *elem, IHTMLCurrentStyle **p)
{
    nsIDOMCSSStyleDeclaration *nsstyle;
    nsIDOMWindow *nsview;
    nsAString nsempty_str;
    HTMLCurrentStyle *ret;
    nsresult nsres;

    if(!elem->node.doc->nsdoc)  {
        FUNC3("NULL nsdoc\n");
        return E_UNEXPECTED;
    }

    nsres = FUNC9(elem->node.doc->nsdoc, &nsview);
    if(FUNC2(nsres)) {
        FUNC0("GetDefaultView failed: %08x\n", nsres);
        return E_FAIL;
    }

    FUNC7(&nsempty_str, NULL);
    nsres = FUNC10(nsview, (nsIDOMElement*)elem->nselem, &nsempty_str, &nsstyle);
    FUNC6(&nsempty_str);
    FUNC11(nsview);
    if(FUNC2(nsres)) {
        FUNC0("GetComputedStyle failed: %08x\n", nsres);
        return E_FAIL;
    }

    if(!nsstyle) {
        FUNC0("GetComputedStyle returned NULL nsstyle\n");
        return E_FAIL;
    }

    ret = FUNC4(sizeof(HTMLCurrentStyle));
    if(!ret) {
        FUNC8(nsstyle);
        return E_OUTOFMEMORY;
    }

    ret->IHTMLCurrentStyle_iface.lpVtbl  = &HTMLCurrentStyleVtbl;
    ret->IHTMLCurrentStyle2_iface.lpVtbl = &HTMLCurrentStyle2Vtbl;
    ret->IHTMLCurrentStyle3_iface.lpVtbl = &HTMLCurrentStyle3Vtbl;
    ret->IHTMLCurrentStyle4_iface.lpVtbl = &HTMLCurrentStyle4Vtbl;
    ret->ref = 1;
    ret->nsstyle = nsstyle;

    FUNC5(&ret->dispex, (IUnknown*)&ret->IHTMLCurrentStyle_iface,  &HTMLCurrentStyle_dispex);

    FUNC1(&elem->IHTMLElement_iface);
    ret->elem = elem;

    *p = &ret->IHTMLCurrentStyle_iface;
    return S_OK;
}