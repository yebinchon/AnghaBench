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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  scalar_t__ uint_t ;
struct TYPE_4__ {int /*<<< orphan*/  cb_name_flags; } ;
typedef  TYPE_1__ status_cbdata_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(zpool_handle_t *zhp, status_cbdata_t *cb, nvlist_t **l2cache,
    uint_t nl2cache)
{
	uint_t i;
	char *name;

	if (nl2cache == 0)
		return;

	(void) FUNC3(FUNC1("\tcache\n"));

	for (i = 0; i < nl2cache; i++) {
		name = FUNC4(g_zfs, zhp, l2cache[i],
		    cb->cb_name_flags);
		FUNC2(zhp, cb, name, l2cache[i], 2, B_FALSE);
		FUNC0(name);
	}
}