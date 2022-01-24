#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ zpool_state; int /*<<< orphan*/  zpool_name; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EZFS_POOLUNAVAIL ; 
 scalar_t__ POOL_STATE_UNAVAIL ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char const*) ; 

zpool_handle_t *
FUNC4(libzfs_handle_t *hdl, const char *pool)
{
	zpool_handle_t *zhp;

	if ((zhp = FUNC3(hdl, pool)) == NULL)
		return (NULL);

	if (zhp->zpool_state == POOL_STATE_UNAVAIL) {
		(void) FUNC1(hdl, EZFS_POOLUNAVAIL,
		    FUNC0(TEXT_DOMAIN, "cannot open '%s'"), zhp->zpool_name);
		FUNC2(zhp);
		return (NULL);
	}

	return (zhp);
}