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

/* Variables and functions */
 int EUNATCH ; 
 void* FUNC0 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_slab_operations ; 
 int /*<<< orphan*/ * proc_spl ; 
 int /*<<< orphan*/ * proc_spl_kmem ; 
 int /*<<< orphan*/ * proc_spl_kmem_slab ; 
 int /*<<< orphan*/ * proc_spl_kstat ; 
 int /*<<< orphan*/ * proc_spl_taskq ; 
 int /*<<< orphan*/ * proc_spl_taskq_all ; 
 int /*<<< orphan*/  proc_taskq_all_operations ; 
 int /*<<< orphan*/  proc_taskq_operations ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * spl_header ; 
 int /*<<< orphan*/  spl_root ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(void)
{
	int rc = 0;

	spl_header = FUNC2(spl_root);
	if (spl_header == NULL)
		return (-EUNATCH);

	proc_spl = FUNC1("spl", NULL);
	if (proc_spl == NULL) {
		rc = -EUNATCH;
		goto out;
	}

	proc_spl_taskq_all = FUNC0("taskq-all", 0444, proc_spl,
	    &proc_taskq_all_operations, NULL);
	if (proc_spl_taskq_all == NULL) {
		rc = -EUNATCH;
		goto out;
	}

	proc_spl_taskq = FUNC0("taskq", 0444, proc_spl,
	    &proc_taskq_operations, NULL);
	if (proc_spl_taskq == NULL) {
		rc = -EUNATCH;
		goto out;
	}

	proc_spl_kmem = FUNC1("kmem", proc_spl);
	if (proc_spl_kmem == NULL) {
		rc = -EUNATCH;
		goto out;
	}

	proc_spl_kmem_slab = FUNC0("slab", 0444, proc_spl_kmem,
	    &proc_slab_operations, NULL);
	if (proc_spl_kmem_slab == NULL) {
		rc = -EUNATCH;
		goto out;
	}

	proc_spl_kstat = FUNC1("kstat", proc_spl);
	if (proc_spl_kstat == NULL) {
		rc = -EUNATCH;
		goto out;
	}
out:
	if (rc) {
		FUNC3("kstat", proc_spl);
		FUNC3("slab", proc_spl_kmem);
		FUNC3("kmem", proc_spl);
		FUNC3("taskq-all", proc_spl);
		FUNC3("taskq", proc_spl);
		FUNC3("spl", NULL);
		FUNC4(spl_header);
	}

	return (rc);
}