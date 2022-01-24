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
 char* FUNC0 () ; 
 int /*<<< orphan*/  global_options ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char const*,char const*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(void)
{
	const char	*home, *history_file;
	char		*path;

	history_file = FUNC1(global_options, "history-file");
	if (*history_file == '\0')
		return (NULL);
	if (*history_file == '/')
		return (FUNC3(history_file));

	if (history_file[0] != '~' || history_file[1] != '/')
		return (NULL);
	if ((home = FUNC0()) == NULL)
		return (NULL);
	FUNC2(&path, "%s%s", home, history_file + 1);
	return (path);
}