#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMCSSStyleDeclaration ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_1__ IHTMLStyle_iface; int /*<<< orphan*/  dispex; int /*<<< orphan*/ * elem; int /*<<< orphan*/ * nsstyle; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ HTMLStyle ;
typedef  int /*<<< orphan*/  HTMLElement ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  HTMLStyleVtbl ; 
 int /*<<< orphan*/  HTMLStyle_dispex ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

HRESULT FUNC8(HTMLElement *elem, HTMLStyle **ret)
{
    nsIDOMCSSStyleDeclaration *nsstyle;
    HTMLStyle *style;
    HRESULT hres;

    hres = FUNC3(elem, &nsstyle);
    if(FUNC0(hres))
        return hres;

    style = FUNC4(sizeof(HTMLStyle));
    if(!style) {
        FUNC7(nsstyle);
        return E_OUTOFMEMORY;
    }

    style->IHTMLStyle_iface.lpVtbl = &HTMLStyleVtbl;
    style->ref = 1;
    style->nsstyle = nsstyle;
    style->elem = elem;
    FUNC1(style);
    FUNC2(style);

    FUNC6(nsstyle);

    FUNC5(&style->dispex, (IUnknown*)&style->IHTMLStyle_iface, &HTMLStyle_dispex);

    *ret = style;
    return S_OK;
}