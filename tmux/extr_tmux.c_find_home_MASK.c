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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 struct passwd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

const char *
FUNC3(void)
{
	struct passwd		*pw;
	static const char	*home;

	if (home != NULL)
		return (home);

	home = FUNC0("HOME");
	if (home == NULL || *home == '\0') {
		pw = FUNC1(FUNC2());
		if (pw != NULL)
			home = pw->pw_dir;
		else
			home = NULL;
	}

	return (home);
}