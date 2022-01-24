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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(libzfs_handle_t *hdl, char *target, int prefixlen)
{
	zfs_handle_t *h;
	char *cp;
	const char *opname;

	/* make sure prefix exists */
	cp = target + prefixlen;
	if (*cp != '/') {
		FUNC0(FUNC3(cp, '/') == NULL);
		h = FUNC8(hdl, target, ZFS_TYPE_FILESYSTEM);
	} else {
		*cp = '\0';
		h = FUNC8(hdl, target, ZFS_TYPE_FILESYSTEM);
		*cp = '/';
	}
	if (h == NULL)
		return (-1);
	FUNC4(h);

	/*
	 * Attempt to create, mount, and share any ancestor filesystems,
	 * up to the prefixlen-long one.
	 */
	for (cp = target + prefixlen + 1;
	    (cp = FUNC3(cp, '/')) != NULL; *cp = '/', cp++) {

		*cp = '\0';

		h = FUNC2(hdl, target);
		if (h) {
			/* it already exists, nothing to do here */
			FUNC4(h);
			continue;
		}

		if (FUNC5(hdl, target, ZFS_TYPE_FILESYSTEM,
		    NULL) != 0) {
			opname = FUNC1(TEXT_DOMAIN, "create");
			goto ancestorerr;
		}

		h = FUNC8(hdl, target, ZFS_TYPE_FILESYSTEM);
		if (h == NULL) {
			opname = FUNC1(TEXT_DOMAIN, "open");
			goto ancestorerr;
		}

		if (FUNC7(h, NULL, 0) != 0) {
			opname = FUNC1(TEXT_DOMAIN, "mount");
			goto ancestorerr;
		}

		if (FUNC9(h) != 0) {
			opname = FUNC1(TEXT_DOMAIN, "share");
			goto ancestorerr;
		}

		FUNC4(h);
	}

	return (0);

ancestorerr:
	FUNC6(hdl, FUNC1(TEXT_DOMAIN,
	    "failed to %s ancestor '%s'"), opname, target);
	return (-1);
}