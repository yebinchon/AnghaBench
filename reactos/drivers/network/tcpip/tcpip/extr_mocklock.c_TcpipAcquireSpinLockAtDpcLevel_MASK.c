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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DISPATCH_LEVEL ; 
 scalar_t__ KernelIrql ; 

VOID FUNC1( PKSPIN_LOCK SpinLock ) {
    FUNC0(KernelIrql == DISPATCH_LEVEL);
}