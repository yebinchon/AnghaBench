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
struct option_info {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (struct option_info*) ; 
 int SIZEOF_STR ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct option_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 struct option_info* option_info ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC6(FILE *file)
{
	char buf[SIZEOF_STR];
	int i;

	if (!FUNC3(file, "%s", "\n## Settings\n"))
		return false;

	for (i = 0; i < FUNC0(option_info); i++) {
		struct option_info *option = &option_info[i];
		const char *name = FUNC1(option->name);
		const char *value = FUNC2(option, buf, sizeof(buf));

		if (!value)
			return false;

		if (!FUNC5(name, FUNC4(name), "-args"))
			continue;

		if (!FUNC3(file, "\nset %-25s = %s", name, value))
			return false;
	}

	return true;
}