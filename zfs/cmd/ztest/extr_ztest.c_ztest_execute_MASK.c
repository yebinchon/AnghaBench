#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zc_time; int /*<<< orphan*/  zc_count; } ;
typedef  TYPE_1__ ztest_shared_callstate_t ;
struct TYPE_7__ {int zi_iters; char* zi_funcname; int /*<<< orphan*/  (* zi_func ) (int /*<<< orphan*/ *,size_t) ;} ;
typedef  TYPE_2__ ztest_info_t ;
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  size_t uint64_t ;
typedef  int hrtime_t ;
struct TYPE_8__ {size_t zo_datasets; int zo_verbose; } ;

/* Variables and functions */
 double NANOSEC ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,double,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * ztest_ds ; 
 TYPE_3__ ztest_opts ; 

__attribute__((used)) static void
FUNC5(int test, ztest_info_t *zi, uint64_t id)
{
	ztest_ds_t *zd = &ztest_ds[id % ztest_opts.zo_datasets];
	ztest_shared_callstate_t *zc = FUNC0(test);
	hrtime_t functime = FUNC2();
	int i;

	for (i = 0; i < zi->zi_iters; i++)
		zi->zi_func(zd, id);

	functime = FUNC2() - functime;

	FUNC1(&zc->zc_count, 1);
	FUNC1(&zc->zc_time, functime);

	if (ztest_opts.zo_verbose >= 4)
		(void) FUNC3("%6.2f sec in %s\n",
		    (double)functime / NANOSEC, zi->zi_funcname);
}