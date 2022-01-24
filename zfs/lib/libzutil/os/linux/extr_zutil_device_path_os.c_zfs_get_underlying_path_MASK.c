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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 

char *
FUNC4(const char *dev_name)
{
	char *name = NULL;
	char *tmp;

	if (dev_name == NULL)
		return (NULL);

	tmp = FUNC0(dev_name);

	/* dev_name not a DM device, so just un-symlinkize it */
	if (tmp == NULL)
		tmp = FUNC2(dev_name, NULL);

	if (tmp != NULL) {
		name = FUNC3(tmp);
		FUNC1(tmp);
	}

	return (name);
}