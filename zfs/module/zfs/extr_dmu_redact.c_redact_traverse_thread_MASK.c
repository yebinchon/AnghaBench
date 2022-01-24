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
struct redact_thread_arg {int error_code; int /*<<< orphan*/  current_record; int /*<<< orphan*/  q; void* deleted_objs; int /*<<< orphan*/  resume; int /*<<< orphan*/  txg; int /*<<< orphan*/  ds; } ;
struct redact_record {int /*<<< orphan*/  eos_marker; } ;
struct TYPE_6__ {TYPE_1__* os_phys; } ;
typedef  TYPE_2__ objset_t ;
struct TYPE_5__ {scalar_t__ os_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DMU_OST_ZFS ; 
 int EINTR ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int TRAVERSE_PRE ; 
 int TRAVERSE_PREFETCH_METADATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 struct redact_record* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct redact_record*) ; 
 int /*<<< orphan*/  redact_cb ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct redact_thread_arg*) ; 
 void* FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct redact_thread_arg *rt_arg = arg;
	int err;
	struct redact_record *data;
	objset_t *os;
	FUNC0(FUNC1(rt_arg->ds, &os));
#ifdef _KERNEL
	if (os->os_phys->os_type == DMU_OST_ZFS)
		rt_arg->deleted_objs = zfs_get_deleteq(os);
	else
		rt_arg->deleted_objs = objlist_create();
#else
	rt_arg->deleted_objs = FUNC3();
#endif

	err = FUNC7(rt_arg->ds, rt_arg->txg,
	    &rt_arg->resume, TRAVERSE_PRE | TRAVERSE_PREFETCH_METADATA,
	    redact_cb, rt_arg);

	if (err != EINTR)
		rt_arg->error_code = err;
	FUNC4(rt_arg->deleted_objs);
	data = FUNC2(sizeof (*data), KM_SLEEP);
	data->eos_marker = B_TRUE;
	FUNC5(&rt_arg->q, &rt_arg->current_record, data);
	FUNC6();
}