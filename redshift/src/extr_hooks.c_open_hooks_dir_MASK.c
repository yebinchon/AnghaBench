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
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_HOOK_PATH ; 
 char* FUNC0 (char*) ; 
 struct passwd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static DIR *
FUNC5(char *hp)
{
	char *env;

	if ((env = FUNC0("XDG_CONFIG_HOME")) != NULL &&
	    env[0] != '\0') {
		FUNC4(hp, MAX_HOOK_PATH, "%s/redshift/hooks", env);
		return FUNC3(hp);
	}

	if ((env = FUNC0("HOME")) != NULL &&
	    env[0] != '\0') {
		FUNC4(hp, MAX_HOOK_PATH, "%s/.config/redshift/hooks", env);
		return FUNC3(hp);
	}

#ifndef _WIN32
	struct passwd *pwd = FUNC1(FUNC2());
	FUNC4(hp, MAX_HOOK_PATH, "%s/.config/redshift/hooks", pwd->pw_dir);
	return FUNC3(hp);
#else
	return NULL;
#endif
}