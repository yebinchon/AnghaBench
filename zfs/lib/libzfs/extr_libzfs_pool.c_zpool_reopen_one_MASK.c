#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const*) ; 

int
FUNC5(zpool_handle_t *zhp, void *data)
{
	libzfs_handle_t *hdl = FUNC2(zhp);
	const char *pool_name = FUNC3(zhp);
	boolean_t *scrub_restart = data;
	int error;

	error = FUNC1(pool_name, *scrub_restart);
	if (error) {
		return (FUNC4(hdl, error,
		    FUNC0(TEXT_DOMAIN, "cannot reopen '%s'"), pool_name));
	}

	return (0);
}