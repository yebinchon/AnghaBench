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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  PKSPIN_LOCK ;
typedef  scalar_t__ KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ KernelIrql ; 

VOID FUNC1( PKSPIN_LOCK SpinLock, KIRQL Irql ) {
    FUNC0( Irql <= KernelIrql );
    KernelIrql = Irql;
}