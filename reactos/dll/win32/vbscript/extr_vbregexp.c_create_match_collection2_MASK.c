#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_3__ IMatchCollection2_iface; TYPE_1__ IMatchCollection_iface; } ;
typedef  TYPE_2__ MatchCollection2 ;
typedef  TYPE_3__ IMatchCollection2 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MatchCollection2Vtbl ; 
 int /*<<< orphan*/  MatchCollection2_tid ; 
 int /*<<< orphan*/  MatchCollectionVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC3(IMatchCollection2 **match_collection)
{
    MatchCollection2 *ret;
    HRESULT hres;

    hres = FUNC2(MatchCollection2_tid);
    if(FUNC0(hres))
        return hres;

    ret = FUNC1(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IMatchCollection2_iface.lpVtbl = &MatchCollection2Vtbl;
    ret->IMatchCollection_iface.lpVtbl = &MatchCollectionVtbl;

    ret->ref = 1;
    *match_collection = &ret->IMatchCollection2_iface;
    return S_OK;
}