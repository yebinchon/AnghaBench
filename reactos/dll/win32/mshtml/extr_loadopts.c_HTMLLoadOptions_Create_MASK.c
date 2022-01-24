#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_3__ IHtmlLoadOptions_iface; int /*<<< orphan*/ * opts; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ HTMLLoadOptions ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  HtmlLoadOptionsVtbl ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 

HRESULT FUNC5(IUnknown *pUnkOuter, REFIID riid, void** ppv)
{
    HTMLLoadOptions *ret;
    HRESULT hres;

    FUNC2("(%p %s %p)\n", pUnkOuter, FUNC3(riid), ppv);

    ret = FUNC4(sizeof(HTMLLoadOptions));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHtmlLoadOptions_iface.lpVtbl = &HtmlLoadOptionsVtbl;
    ret->ref = 1;
    ret->opts = NULL;

    hres = FUNC0(&ret->IHtmlLoadOptions_iface, riid, ppv);
    FUNC1(&ret->IHtmlLoadOptions_iface);
    return hres;
}