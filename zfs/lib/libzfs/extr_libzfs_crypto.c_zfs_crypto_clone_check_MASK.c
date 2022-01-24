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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION ; 
 int /*<<< orphan*/  ZFS_PROP_KEYFORMAT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYLOCATION ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_ITERS ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(libzfs_handle_t *hdl, zfs_handle_t *origin_zhp,
    char *parent_name, nvlist_t *props)
{
	char errbuf[1024];

	(void) FUNC2(errbuf, sizeof (errbuf),
	    FUNC0(TEXT_DOMAIN, "Encryption clone error"));

	/*
	 * No encryption properties should be specified. They will all be
	 * inherited from the origin dataset.
	 */
	if (FUNC1(props, FUNC4(ZFS_PROP_KEYFORMAT)) ||
	    FUNC1(props, FUNC4(ZFS_PROP_KEYLOCATION)) ||
	    FUNC1(props, FUNC4(ZFS_PROP_ENCRYPTION)) ||
	    FUNC1(props, FUNC4(ZFS_PROP_PBKDF2_ITERS))) {
		FUNC3(hdl, FUNC0(TEXT_DOMAIN,
		    "Encryption properties must inherit from origin dataset."));
		return (EINVAL);
	}

	return (0);
}