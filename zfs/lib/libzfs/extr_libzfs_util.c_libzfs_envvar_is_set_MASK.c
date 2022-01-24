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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(char *envvar)
{
	char *env = FUNC0(envvar);
	if (env && (FUNC3(env, NULL, 0) > 0 ||
	    (!FUNC1(env, "YES", 3) && FUNC2(env, 4) == 3) ||
	    (!FUNC1(env, "ON", 2) && FUNC2(env, 3) == 2)))
		return (1);

	return (0);
}