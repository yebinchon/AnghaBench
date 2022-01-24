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
struct seq_file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * intrs; } ;
typedef  TYPE_1__ kstat_intr_t ;

/* Variables and functions */
 size_t KSTAT_INTR_HARD ; 
 size_t KSTAT_INTR_MULTSVC ; 
 size_t KSTAT_INTR_SOFT ; 
 size_t KSTAT_INTR_SPURIOUS ; 
 size_t KSTAT_INTR_WATCHDOG ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct seq_file *f, kstat_intr_t *kip)
{
	FUNC0(f, "%-8u %-8u %-8u %-8u %-8u\n",
	    kip->intrs[KSTAT_INTR_HARD],
	    kip->intrs[KSTAT_INTR_SOFT],
	    kip->intrs[KSTAT_INTR_WATCHDOG],
	    kip->intrs[KSTAT_INTR_SPURIOUS],
	    kip->intrs[KSTAT_INTR_MULTSVC]);

	return (0);
}