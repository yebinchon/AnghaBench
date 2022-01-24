#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int ref; int dispatch_href; int /*<<< orphan*/  ref_list; int /*<<< orphan*/  guid_list; int /*<<< orphan*/  string_list; int /*<<< orphan*/  name_list; int /*<<< orphan*/  custdata_list; int /*<<< orphan*/  implib_list; TYPE_3__ ICreateTypeLib2_iface; TYPE_2__ ITypeComp_iface; TYPE_1__ ITypeLib2_iface; } ;
typedef  TYPE_4__ ITypeLibImpl ;

/* Variables and functions */
 int /*<<< orphan*/  CreateTypeLib2Vtbl ; 
 TYPE_4__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tlbtcvt ; 
 int /*<<< orphan*/  tlbvt ; 

__attribute__((used)) static ITypeLibImpl* FUNC2(void)
{
    ITypeLibImpl* pTypeLibImpl;

    pTypeLibImpl = FUNC0(sizeof(ITypeLibImpl));
    if (!pTypeLibImpl) return NULL;

    pTypeLibImpl->ITypeLib2_iface.lpVtbl = &tlbvt;
    pTypeLibImpl->ITypeComp_iface.lpVtbl = &tlbtcvt;
    pTypeLibImpl->ICreateTypeLib2_iface.lpVtbl = &CreateTypeLib2Vtbl;
    pTypeLibImpl->ref = 1;

    FUNC1(&pTypeLibImpl->implib_list);
    FUNC1(&pTypeLibImpl->custdata_list);
    FUNC1(&pTypeLibImpl->name_list);
    FUNC1(&pTypeLibImpl->string_list);
    FUNC1(&pTypeLibImpl->guid_list);
    FUNC1(&pTypeLibImpl->ref_list);
    pTypeLibImpl->dispatch_href = -1;

    return pTypeLibImpl;
}