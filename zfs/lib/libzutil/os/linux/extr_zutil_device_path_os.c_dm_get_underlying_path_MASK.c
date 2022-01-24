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
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static char *
FUNC7(const char *dm_name)
{
	DIR *dp = NULL;
	struct dirent *ep;
	char *realp;
	char *tmp = NULL;
	char *path = NULL;
	char *dev_str;
	int size;

	if (dm_name == NULL)
		return (NULL);

	/* dm name may be a symlink (like /dev/disk/by-vdev/A0) */
	realp = FUNC5(dm_name, NULL);
	if (realp == NULL)
		return (NULL);

	/*
	 * If they preface 'dev' with a path (like "/dev") then strip it off.
	 * We just want the 'dm-N' part.
	 */
	tmp = FUNC6(realp, '/');
	if (tmp != NULL)
		dev_str = tmp + 1;    /* +1 since we want the chr after '/' */
	else
		dev_str = tmp;

	size = FUNC0(&tmp, "/sys/block/%s/slaves/", dev_str);
	if (size == -1 || !tmp)
		goto end;

	dp = FUNC3(tmp);
	if (dp == NULL)
		goto end;

	/* Return first sd* entry in /sys/block/dm-N/slaves/ */
	while ((ep = FUNC4(dp))) {
		if (ep->d_type != DT_DIR) {	/* skip "." and ".." dirs */
			size = FUNC0(&path, "/dev/%s", ep->d_name);
			break;
		}
	}

end:
	if (dp != NULL)
		FUNC1(dp);
	FUNC2(tmp);
	FUNC2(realp);
	return (path);
}