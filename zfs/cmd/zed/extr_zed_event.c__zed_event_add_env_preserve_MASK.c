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
typedef  int /*<<< orphan*/  zed_strings_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(uint64_t eid, zed_strings_t *zsp)
{
	const char *env_preserve[] = {
		"TZ",
		NULL
	};
	const char **keyp;
	const char *val;

	FUNC1(zsp != NULL);

	for (keyp = env_preserve; *keyp; keyp++) {
		if ((val = FUNC2(*keyp)))
			FUNC0(eid, zsp, NULL, *keyp, "%s", val);
	}
}