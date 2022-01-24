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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char const*) ; 

char *
FUNC8(const char *in)
{
	char	*copy, *name, *ptr;

	name = copy = FUNC7(in);
	if (FUNC6(name, "exec ", (sizeof "exec ") - 1) == 0)
		name = name + (sizeof "exec ") - 1;

	while (*name == ' ' || *name == '-')
		name++;
	if ((ptr = FUNC4(name, ' ')) != NULL)
		*ptr = '\0';

	if (*name != '\0') {
		ptr = name + FUNC5(name) - 1;
		while (ptr > name &&
		    !FUNC2((u_char)*ptr) &&
		    !FUNC3((u_char)*ptr))
			*ptr-- = '\0';
	}

	if (*name == '/')
		name = FUNC0(name);
	name = FUNC7(name);
	FUNC1(copy);
	return (name);
}