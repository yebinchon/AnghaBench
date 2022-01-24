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
struct format_tree {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct format_tree*,char*) ; 
 char* FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char const*,int) ; 

__attribute__((used)) static int
FUNC5(struct format_tree *ft, const char *s, char **left, char **right,
    int expand)
{
	const char	*cp;
	char		*left0, *right0;

	cp = FUNC1(s, ",");
	if (cp == NULL)
		return (-1);
	left0 = FUNC4(s, cp - s);
	right0 = FUNC3(cp + 1);

	if (expand) {
		*left = FUNC0(ft, left0);
		FUNC2(left0);
		*right = FUNC0(ft, right0);
		FUNC2(right0);
	} else {
		*left = left0;
		*right = right0;
	}
	return (0);
}