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
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 char* FUNC6 (char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

int
FUNC9(libzfs_handle_t *hdl, const char *path)
{
	int prefix;
	char *path_copy;
	char errbuf[1024];
	int rc = 0;

	(void) FUNC5(errbuf, sizeof (errbuf), FUNC3(TEXT_DOMAIN,
	    "cannot create '%s'"), path);

	/*
	 * Check that we are not passing the nesting limit
	 * before we start creating any ancestors.
	 */
	if (FUNC2(path) != 0) {
		FUNC8(hdl, FUNC3(TEXT_DOMAIN,
		    "maximum name nesting depth exceeded"));
		return (FUNC7(hdl, EZFS_INVALIDNAME, errbuf));
	}

	if (FUNC0(hdl, path, NULL, B_TRUE, &prefix) != 0)
		return (-1);

	if ((path_copy = FUNC6(path)) != NULL) {
		rc = FUNC1(hdl, path_copy, prefix);
		FUNC4(path_copy);
	}
	if (path_copy == NULL || rc != 0)
		return (-1);

	return (0);
}