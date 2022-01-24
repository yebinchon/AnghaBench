#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ztest_ds_t ;
struct TYPE_4__ {scalar_t__ zl_parse_lr_count; scalar_t__ zl_replaying_seq; scalar_t__ zl_parse_blk_count; } ;
typedef  TYPE_1__ zilog_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_5__ {int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ANY ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_2__ ztest_opts ; 
 int /*<<< orphan*/  ztest_replay_vector ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(const char *name, void *arg)
{
	objset_t *os;
	ztest_ds_t *zdtmp;

	FUNC0(FUNC7(name, DMU_OST_ANY, B_TRUE,
	    B_TRUE, FTAG, &os));

	zdtmp = FUNC4(sizeof (ztest_ds_t), UMEM_NOFAIL);

	FUNC9(zdtmp, NULL, os);
	FUNC6(os, zdtmp, ztest_replay_vector);
	FUNC8(zdtmp);

	if (FUNC2(os)->zl_parse_lr_count != 0 &&
	    ztest_opts.zo_verbose >= 6) {
		zilog_t *zilog = FUNC2(os);

		(void) FUNC3("%s replay %llu blocks, %llu records, seq %llu\n",
		    name,
		    (u_longlong_t)zilog->zl_parse_blk_count,
		    (u_longlong_t)zilog->zl_parse_lr_count,
		    (u_longlong_t)zilog->zl_replaying_seq);
	}

	FUNC5(zdtmp, sizeof (ztest_ds_t));

	FUNC1(os, B_TRUE, FTAG);
	return (0);
}