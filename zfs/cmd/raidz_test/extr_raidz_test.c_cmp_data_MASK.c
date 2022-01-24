#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* rm_golden; } ;
typedef  TYPE_1__ raidz_test_opts_t ;
struct TYPE_9__ {int rm_cols; } ;
typedef  TYPE_2__ raidz_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  D_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC4(raidz_test_opts_t *opts, raidz_map_t *rm)
{
	int i, ret = 0;
	int dcols = opts->rm_golden->rm_cols - FUNC3(opts->rm_golden);

	for (i = 0; i < dcols; i++) {
		if (FUNC2(FUNC0(opts->rm_golden, i), FUNC0(rm, i))
		    != 0) {
			ret++;

			FUNC1(D_DEBUG, opts,
			    "\nData block [%d] different!\n", i);
		}
	}
	return (ret);
}