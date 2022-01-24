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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {void* first; } ;
typedef  TYPE_1__ hist_cbdata_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,void**) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(zpool_handle_t *zhp, void *data)
{
	nvlist_t *nvhis;
	int ret;
	hist_cbdata_t *cb = (hist_cbdata_t *)data;
	uint64_t off = 0;
	boolean_t eof = B_FALSE;

	cb->first = B_FALSE;

	(void) FUNC3(FUNC0("History for '%s':\n"), FUNC5(zhp));

	while (!eof) {
		if ((ret = FUNC4(zhp, &nvhis, &off, &eof)) != 0)
			return (ret);

		FUNC2(nvhis, cb);
		FUNC1(nvhis);
	}
	(void) FUNC3("\n");

	return (ret);
}