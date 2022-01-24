#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct options_entry {TYPE_1__* tableentry; } ;
struct TYPE_2__ {char* separator; } ;

/* Variables and functions */
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct options_entry*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct options_entry*,scalar_t__,char const*,int /*<<< orphan*/ ,char**) ; 
 char* FUNC3 (char**,char const*) ; 
 char* FUNC4 (char const*) ; 

int
FUNC5(struct options_entry *o, const char *s, char **cause)
{
	const char	*separator;
	char		*copy, *next, *string;
	u_int		 i;

	separator = o->tableentry->separator;
	if (separator == NULL)
		separator = " ,";
	if (*separator == '\0') {
		if (*s == '\0')
			return (0);
		for (i = 0; i < UINT_MAX; i++) {
			if (FUNC1(o, i) == NULL)
				break;
		}
		return (FUNC2(o, i, s, 0, cause));
	}

	if (*s == '\0')
		return (0);
	copy = string = FUNC4(s);
	while ((next = FUNC3(&string, separator)) != NULL) {
		if (*next == '\0')
			continue;
		for (i = 0; i < UINT_MAX; i++) {
			if (FUNC1(o, i) == NULL)
				break;
		}
		if (i == UINT_MAX)
			break;
		if (FUNC2(o, i, next, 0, cause) != 0) {
			FUNC0(copy);
			return (-1);
		}
	}
	FUNC0(copy);
	return (0);
}