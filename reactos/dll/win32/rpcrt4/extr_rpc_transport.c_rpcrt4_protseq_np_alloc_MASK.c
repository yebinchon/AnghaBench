#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  common; int /*<<< orphan*/  mgr_event; } ;
typedef  TYPE_1__ RpcServerProtseq_np ;
typedef  int /*<<< orphan*/  RpcServerProtseq ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static RpcServerProtseq *FUNC3(void)
{
    RpcServerProtseq_np *ps = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(*ps));
    if (ps)
        ps->mgr_event = FUNC0(NULL, FALSE, FALSE, NULL);
    return &ps->common;
}