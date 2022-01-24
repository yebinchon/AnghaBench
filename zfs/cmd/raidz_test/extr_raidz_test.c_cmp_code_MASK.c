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
struct TYPE_4__ {int /*<<< orphan*/  const* rm_golden; } ;
typedef  TYPE_1__ raidz_test_opts_t ;
typedef  int /*<<< orphan*/  raidz_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  D_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(raidz_test_opts_t *opts, const raidz_map_t *rm, const int parity)
{
	int i, ret = 0;

	FUNC2(parity >= 1 && parity <= 3);

	for (i = 0; i < parity; i++) {
		if (FUNC3(FUNC0(rm, i), FUNC0(opts->rm_golden, i))
		    != 0) {
			ret++;
			FUNC1(D_DEBUG, opts,
			    "\nParity block [%d] different!\n", i);
		}
	}
	return (ret);
}