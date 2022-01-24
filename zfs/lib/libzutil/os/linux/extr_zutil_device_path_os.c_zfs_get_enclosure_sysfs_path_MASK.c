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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int FUNC0 (char**,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char const*,char) ; 
 char* FUNC7 (char*,char*) ; 

char *
FUNC8(const char *dev_name)
{
	DIR *dp = NULL;
	struct dirent *ep;
	char buf[MAXPATHLEN];
	char *tmp1 = NULL;
	char *tmp2 = NULL;
	char *tmp3 = NULL;
	char *path = NULL;
	size_t size;
	int tmpsize;

	if (dev_name == NULL)
		return (NULL);

	/* If they preface 'dev' with a path (like "/dev") then strip it off */
	tmp1 = FUNC6(dev_name, '/');
	if (tmp1 != NULL)
		dev_name = tmp1 + 1;    /* +1 since we want the chr after '/' */

	tmpsize = FUNC0(&tmp1, "/sys/block/%s/device", dev_name);
	if (tmpsize == -1 || tmp1 == NULL) {
		tmp1 = NULL;
		goto end;
	}

	dp = FUNC3(tmp1);
	if (dp == NULL) {
		tmp1 = NULL;	/* To make free() at the end a NOP */
		goto end;
	}

	/*
	 * Look though all sysfs entries in /sys/block/<dev>/device for
	 * the enclosure symlink.
	 */
	while ((ep = FUNC4(dp))) {
		/* Ignore everything that's not our enclosure_device link */
		if (FUNC7(ep->d_name, "enclosure_device") == NULL)
			continue;

		if (FUNC0(&tmp2, "%s/%s", tmp1, ep->d_name) == -1 ||
		    tmp2 == NULL)
			break;

		size = FUNC5(tmp2, buf, sizeof (buf));

		/* Did readlink fail or crop the link name? */
		if (size == -1 || size >= sizeof (buf)) {
			FUNC2(tmp2);
			tmp2 = NULL;	/* To make free() at the end a NOP */
			break;
		}

		/*
		 * We got a valid link.  readlink() doesn't terminate strings
		 * so we have to do it.
		 */
		buf[size] = '\0';

		/*
		 * Our link will look like:
		 *
		 * "../../../../port-11:1:2/..STUFF../enclosure/1:0:3:0/SLOT 1"
		 *
		 * We want to grab the "enclosure/1:0:3:0/SLOT 1" part
		 */
		tmp3 = FUNC7(buf, "enclosure");
		if (tmp3 == NULL)
			break;

		if (FUNC0(&path, "/sys/class/%s", tmp3) == -1) {
			/* If asprintf() fails, 'path' is undefined */
			path = NULL;
			break;
		}

		if (path == NULL)
			break;
	}

end:
	FUNC2(tmp2);
	FUNC2(tmp1);

	if (dp != NULL)
		FUNC1(dp);

	return (path);
}