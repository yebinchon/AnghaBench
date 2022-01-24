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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 

char *
FUNC5(const char *name, int *idx)
{
	char	*copy, *cp, *end;

	if (*name == '\0')
		return (NULL);
	copy = FUNC4(name);
	if ((cp = FUNC3(copy, '[')) == NULL) {
		*idx = -1;
		return (copy);
	}
	end = FUNC3(cp + 1, ']');
	if (end == NULL || end[1] != '\0' || !FUNC1((u_char)end[-1])) {
		FUNC0(copy);
		return (NULL);
	}
	if (FUNC2(cp, "[%d]", idx) != 1 || *idx < 0) {
		FUNC0(copy);
		return (NULL);
	}
	*cp = '\0';
	return (copy);
}