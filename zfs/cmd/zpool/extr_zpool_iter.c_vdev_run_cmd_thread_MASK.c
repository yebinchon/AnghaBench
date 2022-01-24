#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cmd; } ;
typedef  TYPE_1__ vdev_cmd_data_t ;
typedef  int /*<<< orphan*/  fullpath ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 char* FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void *cb_cmd_data)
{
	vdev_cmd_data_t *data = cb_cmd_data;
	char *cmd = NULL, *cmddup, *cmdrest;

	cmddup = FUNC4(data->cmd);
	if (cmddup == NULL)
		return;

	cmdrest = cmddup;
	while ((cmd = FUNC5(cmdrest, ",", &cmdrest))) {
		char *dir = NULL, *sp, *sprest;
		char fullpath[MAXPATHLEN];

		if (FUNC3(cmd, '/') != NULL)
			continue;

		sp = FUNC7();
		if (sp == NULL)
			continue;

		sprest = sp;
		while ((dir = FUNC5(sprest, ":", &sprest))) {
			if (FUNC2(fullpath, sizeof (fullpath),
			    "%s/%s", dir, cmd) == -1)
				continue;

			if (FUNC0(fullpath, X_OK) == 0) {
				FUNC6(data, fullpath);
				break;
			}
		}
		FUNC1(sp);
	}
	FUNC1(cmddup);
}