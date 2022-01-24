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
 int VIS_CSTYLE ; 
 int VIS_DQ ; 
 int VIS_NL ; 
 int VIS_OCTAL ; 
 int VIS_TAB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const) ; 
 size_t FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char**,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,...) ; 
 char* FUNC5 (char const*) ; 

char *
FUNC6(const char *s)
{
	static const char	 quoted[] = " #\"';${}";
	char			*escaped, *result;
	int			 flags;

	if (*s == '\0')
		return (FUNC5(s));
	if (s[0] != ' ' &&
	    (FUNC1(quoted, s[0]) != NULL || s[0] == '~') &&
	    s[1] == '\0') {
		FUNC4(&escaped, "\\%c", s[0]);
		return (escaped);
	}

	flags = VIS_OCTAL|VIS_CSTYLE|VIS_TAB|VIS_NL;
	if (s[FUNC2(s, quoted)] != '\0')
		flags |= VIS_DQ;
	FUNC3(&escaped, s, flags);

	if (flags & VIS_DQ) {
		if (*escaped == '~')
			FUNC4(&result, "\"\\%s\"", escaped);
		else
			FUNC4(&result, "\"%s\"", escaped);
	} else {
		if (*escaped == '~')
			FUNC4(&result, "\\%s", escaped);
		else
			result = FUNC5(escaped);
	}
	FUNC0(escaped);
	return (result);
}