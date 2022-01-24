#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_6__ {int /*<<< orphan*/ * rm_golden; int /*<<< orphan*/ * zio_golden; } ;
typedef  TYPE_1__ raidz_test_opts_t ;
typedef  int /*<<< orphan*/  raidz_map_t ;

/* Variables and functions */
 char* DBLSEP ; 
 int /*<<< orphan*/  D_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  PARITY_PQR ; 
 unsigned int RAIDZ_REC_NUM ; 
 char* SEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 unsigned int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ raidz_impl_names ; 
 int /*<<< orphan*/ * raidz_rec_name ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(raidz_test_opts_t *opts)
{
	char **impl_name;
	unsigned fn, err = 0;
	zio_t *zio_test;
	raidz_map_t *rm_test;

	err = FUNC2(opts, PARITY_PQR);
	if (0 != err)
		return (err);

	FUNC0(D_INFO, DBLSEP);
	FUNC0(D_INFO, "Testing data reconstruction...\n");

	for (impl_name = (char **)raidz_impl_names+1; *impl_name != NULL;
	    impl_name++) {

		FUNC0(D_INFO, SEP);
		FUNC0(D_INFO, "\tTesting [%s] implementation...", *impl_name);

		if (FUNC6(*impl_name) != 0) {
			FUNC0(D_INFO, "[SKIP]\n");
			continue;
		} else
			FUNC0(D_INFO, "[SUPPORTED]\n");


		/* create suitable raidz_map */
		rm_test = FUNC3(opts, &zio_test, PARITY_PQR);
		/* generate parity */
		FUNC5(rm_test);

		for (fn = 0; fn < RAIDZ_REC_NUM; fn++) {

			FUNC0(D_INFO, "\t\tTesting method [%s] ...",
			    raidz_rec_name[fn]);

			if (FUNC4(opts, rm_test, fn) != 0) {
				FUNC0(D_INFO, "[FAIL]\n");
				err++;

			} else
				FUNC0(D_INFO, "[PASS]\n");

		}
		/* tear down test raidz_map */
		FUNC1(&zio_test, &rm_test);
	}

	FUNC1(&opts->zio_golden, &opts->rm_golden);

	return (err);
}