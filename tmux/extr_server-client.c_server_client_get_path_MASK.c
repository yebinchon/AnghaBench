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
struct client {int dummy; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 (char const*) ; 

char *
FUNC5(struct client *c, const char *file)
{
	char	*path, resolved[PATH_MAX];

	if (*file == '/')
		path = FUNC4(file);
	else
		FUNC3(&path, "%s/%s", FUNC2(c, NULL), file);
	if (FUNC1(path, resolved) == NULL)
		return (path);
	FUNC0(path);
	return (FUNC4(resolved));
}