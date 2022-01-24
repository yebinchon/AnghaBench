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
 int /*<<< orphan*/  ZPOOL_SCRIPTS_DIR ; 
 int FUNC0 (char**,char*,char const*,...) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

char *
FUNC3(void)
{
	const char *env;
	char *sp = NULL;

	env = FUNC1("ZPOOL_SCRIPTS_PATH");
	if (env != NULL)
		return (FUNC2(env));

	env = FUNC1("HOME");
	if (env != NULL) {
		if (FUNC0(&sp, "%s/.zpool.d:%d",
		    env, ZPOOL_SCRIPTS_DIR) != -1) {
			return (sp);
		}
	}

	if (FUNC0(&sp, "%s", ZPOOL_SCRIPTS_DIR) != -1)
		return (sp);

	return (NULL);
}