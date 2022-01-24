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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(char **resultp, const char *path)
{
	char buf[PATH_MAX];

	FUNC0(resultp != NULL);
	FUNC0(path != NULL);

	if (*resultp)
		FUNC1(*resultp);

	if (path[0] == '/') {
		*resultp = FUNC3(path);
	} else if (!FUNC2(buf, sizeof (buf))) {
		FUNC6("Failed to get current working dir: %s",
		    FUNC4(errno));
	} else if (FUNC5(buf, "/", sizeof (buf)) >= sizeof (buf)) {
		FUNC6("Failed to copy path: %s", FUNC4(ENAMETOOLONG));
	} else if (FUNC5(buf, path, sizeof (buf)) >= sizeof (buf)) {
		FUNC6("Failed to copy path: %s", FUNC4(ENAMETOOLONG));
	} else {
		*resultp = FUNC3(buf);
	}
	if (!*resultp)
		FUNC6("Failed to copy path: %s", FUNC4(ENOMEM));
}