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
struct proc_dir_entry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ksm_module_list; int /*<<< orphan*/  ksm_kstat_list; int /*<<< orphan*/  ksm_name; struct proc_dir_entry* ksm_proc; } ;
typedef  TYPE_1__ kstat_module_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ KSTAT_STRLEN ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kstat_module_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct proc_dir_entry* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_spl_kstat ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static kstat_module_t *
FUNC5(char *name)
{
	kstat_module_t *module;
	struct proc_dir_entry *pde;

	pde = FUNC3(name, proc_spl_kstat);
	if (pde == NULL)
		return (NULL);

	module = FUNC1(sizeof (kstat_module_t), KM_SLEEP);
	module->ksm_proc = pde;
	FUNC4(module->ksm_name, name, KSTAT_STRLEN+1);
	FUNC0(&module->ksm_kstat_list);
	FUNC2(&module->ksm_module_list, &kstat_module_list);

	return (module);

}