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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMStyleSheet ;
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLStyleSheet_iface; int /*<<< orphan*/ * nsstylesheet; int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IHTMLStyleSheet ;
typedef  TYPE_2__ HTMLStyleSheet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HTMLStyleSheetVtbl ; 
 int /*<<< orphan*/  HTMLStyleSheet_dispex ; 
 int /*<<< orphan*/  IID_nsIDOMCSSStyleSheet ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 

IHTMLStyleSheet *FUNC5(nsIDOMStyleSheet *nsstylesheet)
{
    HTMLStyleSheet *ret = FUNC2(sizeof(HTMLStyleSheet));
    nsresult nsres;

    ret->IHTMLStyleSheet_iface.lpVtbl = &HTMLStyleSheetVtbl;
    ret->ref = 1;
    ret->nsstylesheet = NULL;

    FUNC3(&ret->dispex, (IUnknown*)&ret->IHTMLStyleSheet_iface, &HTMLStyleSheet_dispex);

    if(nsstylesheet) {
        nsres = FUNC4(nsstylesheet, &IID_nsIDOMCSSStyleSheet,
                (void**)&ret->nsstylesheet);
        if(FUNC1(nsres))
            FUNC0("Could not get nsICSSStyleSheet interface: %08x\n", nsres);
    }

    return &ret->IHTMLStyleSheet_iface;
}