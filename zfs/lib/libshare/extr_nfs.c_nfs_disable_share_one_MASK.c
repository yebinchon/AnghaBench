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

/* Variables and functions */
 int SA_OK ; 
 int SA_SYSTEM_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*,char**) ; 
 int FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(const char *sharepath, const char *host,
    const char *security, const char *access, void *cookie)
{
	int rc;
	char *linuxhost, *hostpath;
	char *argv[4];

	rc = FUNC3(host, &linuxhost);

	if (rc < 0)
		FUNC0(1);

	hostpath = FUNC5(FUNC7(linuxhost) + 1 + FUNC7(sharepath) + 1);

	if (hostpath == NULL) {
		FUNC2(linuxhost);
		FUNC0(1);
	}

	FUNC6(hostpath, "%s:%s", linuxhost, sharepath);

	FUNC2(linuxhost);

#ifdef DEBUG
	fprintf(stderr, "unsharing %s\n", hostpath);
#endif

	argv[0] = "/usr/sbin/exportfs";
	argv[1] = "-u";
	argv[2] = hostpath;
	argv[3] = NULL;

	rc = FUNC4(argv[0], argv, 0);

	FUNC2(hostpath);

	if (rc < 0)
		return (SA_SYSTEM_ERR);
	else
		return (SA_OK);
}