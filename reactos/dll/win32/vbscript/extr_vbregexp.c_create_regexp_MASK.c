#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IRegExp2_iface; int /*<<< orphan*/  pool; TYPE_2__ IRegExp_iface; } ;
typedef  TYPE_3__ RegExp2 ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RegExp2Vtbl ; 
 int /*<<< orphan*/  RegExp2_tid ; 
 int /*<<< orphan*/  RegExpVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

HRESULT FUNC4(IDispatch **ret)
{
    RegExp2 *regexp;
    HRESULT hres;

    hres = FUNC3(RegExp2_tid);
    if(FUNC0(hres))
        return hres;

    regexp = FUNC1(sizeof(*regexp));
    if(!regexp)
        return E_OUTOFMEMORY;

    regexp->IRegExp2_iface.lpVtbl = &RegExp2Vtbl;
    regexp->IRegExp_iface.lpVtbl = &RegExpVtbl;
    regexp->ref = 1;
    FUNC2(&regexp->pool);

    *ret = (IDispatch*)&regexp->IRegExp2_iface;
    return S_OK;
}