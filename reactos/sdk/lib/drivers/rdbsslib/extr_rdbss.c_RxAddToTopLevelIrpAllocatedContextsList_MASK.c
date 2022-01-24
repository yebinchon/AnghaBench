#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {scalar_t__ Signature; int /*<<< orphan*/  ListEntry; int /*<<< orphan*/  Flags; } ;
typedef  TYPE_1__* PRX_TOPLEVELIRP_CONTEXT ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_TOPLEVELCTX_FLAG_FROM_POOL ; 
 scalar_t__ RX_TOPLEVELIRP_CONTEXT_SIGNATURE ; 
 int /*<<< orphan*/  TopLevelIrpAllocatedContextsList ; 
 int /*<<< orphan*/  TopLevelIrpSpinLock ; 

VOID
FUNC6(
    PRX_TOPLEVELIRP_CONTEXT TopLevelContext)
{
    KIRQL OldIrql;

    FUNC2("RxAddToTopLevelIrpAllocatedContextsList(%p)\n", TopLevelContext);

    FUNC0(TopLevelContext->Signature == RX_TOPLEVELIRP_CONTEXT_SIGNATURE);
    FUNC0(FUNC1(TopLevelContext->Flags, RX_TOPLEVELCTX_FLAG_FROM_POOL));

    FUNC4(&TopLevelIrpSpinLock, &OldIrql);
    FUNC3(&TopLevelIrpAllocatedContextsList, &TopLevelContext->ListEntry);
    FUNC5(&TopLevelIrpSpinLock, OldIrql);
}