#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PKSPIN_LOCK ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYNCH_LEVEL ; 

KIRQL
FUNC2(PKSPIN_LOCK SpinLock)
{
    KIRQL OldIrql;

    /* Raise to sync */
    FUNC0(SYNCH_LEVEL, &OldIrql);

    /* Acquire the lock and return */
    FUNC1(SpinLock);
    return OldIrql;
}