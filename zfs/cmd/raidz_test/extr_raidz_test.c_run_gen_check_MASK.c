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
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_7__ {int /*<<< orphan*/ * rm_golden; int /*<<< orphan*/ * zio_golden; int /*<<< orphan*/  rto_sanity; } ;
typedef  TYPE_1__ raidz_test_opts_t ;
typedef  int /*<<< orphan*/  raidz_map_t ;
struct TYPE_8__ {scalar_t__ rto_should_stop; } ;

/* Variables and functions */
 char* DBLSEP ; 
 int /*<<< orphan*/  D_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  PARITY_PQR ; 
 int RAIDZ_GEN_NUM ; 
 char* SEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * raidz_gen_name ; 
 scalar_t__ raidz_impl_names ; 
 TYPE_3__ rto_opts ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(raidz_test_opts_t *opts)
{
	char **impl_name;
	int fn, err = 0;
	zio_t *zio_test;
	raidz_map_t *rm_test;

	err = FUNC4(opts, PARITY_PQR);
	if (0 != err)
		return (err);

	FUNC0(D_INFO, DBLSEP);
	FUNC0(D_INFO, "Testing parity generation...\n");

	for (impl_name = (char **)raidz_impl_names+1; *impl_name != NULL;
	    impl_name++) {

		FUNC0(D_INFO, SEP);
		FUNC0(D_INFO, "\tTesting [%s] implementation...", *impl_name);

		if (0 != FUNC7(*impl_name)) {
			FUNC0(D_INFO, "[SKIP]\n");
			continue;
		} else {
			FUNC0(D_INFO, "[SUPPORTED]\n");
		}

		for (fn = 0; fn < RAIDZ_GEN_NUM; fn++) {

			/* Check if should stop */
			if (rto_opts.rto_should_stop)
				return (err);

			/* create suitable raidz_map */
			rm_test = FUNC5(opts, &zio_test, fn+1);
			FUNC1(rm_test);

			FUNC0(D_INFO, "\t\tTesting method [%s] ...",
			    raidz_gen_name[fn]);

			if (!opts->rto_sanity)
				FUNC6(rm_test);

			if (FUNC2(opts, rm_test, fn+1) != 0) {
				FUNC0(D_INFO, "[FAIL]\n");
				err++;
			} else
				FUNC0(D_INFO, "[PASS]\n");

			FUNC3(&zio_test, &rm_test);
		}
	}

	FUNC3(&opts->zio_golden, &opts->rm_golden);

	return (err);
}