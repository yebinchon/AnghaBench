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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * proc_spl ; 
 int /*<<< orphan*/ * proc_spl_kmem ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * spl_header ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	FUNC1("kstat", proc_spl);
	FUNC1("slab", proc_spl_kmem);
	FUNC1("kmem", proc_spl);
	FUNC1("taskq-all", proc_spl);
	FUNC1("taskq", proc_spl);
	FUNC1("spl", NULL);

	FUNC0(spl_header != NULL);
	FUNC2(spl_header);
}