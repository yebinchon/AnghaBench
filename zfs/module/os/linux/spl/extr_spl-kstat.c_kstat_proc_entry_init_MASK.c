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
struct TYPE_3__ {int /*<<< orphan*/  kpe_name; int /*<<< orphan*/  kpe_module; int /*<<< orphan*/  kpe_list; int /*<<< orphan*/ * kpe_proc; int /*<<< orphan*/ * kpe_owner; } ;
typedef  TYPE_1__ kstat_proc_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KSTAT_STRLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void
FUNC2(kstat_proc_entry_t *kpep, const char *module,
    const char *name)
{
	kpep->kpe_owner = NULL;
	kpep->kpe_proc = NULL;
	FUNC0(&kpep->kpe_list);
	FUNC1(kpep->kpe_module, module, KSTAT_STRLEN);
	FUNC1(kpep->kpe_name, name, KSTAT_STRLEN);
}