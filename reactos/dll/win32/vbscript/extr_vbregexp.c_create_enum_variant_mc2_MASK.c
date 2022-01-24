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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IEnumVARIANT_iface; int /*<<< orphan*/ * mc; int /*<<< orphan*/  count; int /*<<< orphan*/  pos; } ;
typedef  TYPE_1__ MatchCollectionEnum ;
typedef  int /*<<< orphan*/  IMatchCollection2 ;
typedef  TYPE_2__ IEnumVARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MatchCollectionEnum_Vtbl ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static HRESULT FUNC3(IMatchCollection2 *mc, ULONG pos, IEnumVARIANT **enum_variant)
{
    MatchCollectionEnum *ret;

    ret = FUNC2(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IEnumVARIANT_iface.lpVtbl = &MatchCollectionEnum_Vtbl;
    ret->ref = 1;
    ret->pos = pos;
    FUNC1(mc, &ret->count);
    ret->mc = mc;
    FUNC0(mc);

    *enum_variant = &ret->IEnumVARIANT_iface;
    return S_OK;
}