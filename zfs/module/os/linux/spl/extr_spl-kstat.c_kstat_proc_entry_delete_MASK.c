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
struct TYPE_5__ {scalar_t__ kpe_proc; int /*<<< orphan*/  kpe_list; int /*<<< orphan*/  kpe_name; TYPE_2__* kpe_owner; } ;
typedef  TYPE_1__ kstat_proc_entry_t ;
struct TYPE_6__ {int /*<<< orphan*/  ksm_kstat_list; int /*<<< orphan*/  ksm_proc; } ;
typedef  TYPE_2__ kstat_module_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  kstat_module_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(kstat_proc_entry_t *kpep)
{
	kstat_module_t *module = kpep->kpe_owner;
	if (kpep->kpe_proc)
		FUNC5(kpep->kpe_name, module->ksm_proc);

	FUNC3(&kstat_module_lock);
	FUNC1(&kpep->kpe_list);

	/*
	 * Remove top level module directory if it wasn't empty before, but now
	 * is.
	 */
	if (kpep->kpe_proc && FUNC2(&module->ksm_kstat_list))
		FUNC0(module);
	FUNC4(&kstat_module_lock);

}