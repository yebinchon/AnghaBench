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
struct TYPE_4__ {int ks_flags; int ks_data_size; int /*<<< orphan*/  ks_private_lock; int /*<<< orphan*/ * ks_lock; struct TYPE_4__* ks_data; int /*<<< orphan*/  ks_proc; } ;
typedef  TYPE_1__ kstat_t ;

/* Variables and functions */
 int KSTAT_FLAG_VIRTUAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(kstat_t *ksp)
{
	FUNC1(&ksp->ks_proc);

	if (!(ksp->ks_flags & KSTAT_FLAG_VIRTUAL))
		FUNC0(ksp->ks_data, ksp->ks_data_size);

	ksp->ks_lock = NULL;
	FUNC2(&ksp->ks_private_lock);
	FUNC0(ksp, sizeof (*ksp));
}