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
 int COLOUR_FLAG_256 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,int,char const**) ; 

int
FUNC8(const char *s)
{
	const char	*errstr;
	const char	*cp;
	int		 n;
	u_char		 r, g, b;

	if (*s == '#' && FUNC5(s) == 7) {
		for (cp = s + 1; FUNC1((u_char) *cp); cp++)
			;
		if (*cp != '\0')
			return (-1);
		n = FUNC2(s + 1, "%2hhx%2hhx%2hhx", &r, &g, &b);
		if (n != 3)
			return (-1);
		return (FUNC0(r, g, b));
	}

	if (FUNC6(s, "colour", (sizeof "colour") - 1) == 0) {
		n = FUNC7(s + (sizeof "colour") - 1, 0, 255, &errstr);
		if (errstr != NULL)
			return (-1);
		return (n | COLOUR_FLAG_256);
	}

	if (FUNC3(s, "default") == 0)
		return (8);
	if (FUNC3(s, "terminal") == 0)
		return (9);

	if (FUNC3(s, "black") == 0 || FUNC4(s, "0") == 0)
		return (0);
	if (FUNC3(s, "red") == 0 || FUNC4(s, "1") == 0)
		return (1);
	if (FUNC3(s, "green") == 0 || FUNC4(s, "2") == 0)
		return (2);
	if (FUNC3(s, "yellow") == 0 || FUNC4(s, "3") == 0)
		return (3);
	if (FUNC3(s, "blue") == 0 || FUNC4(s, "4") == 0)
		return (4);
	if (FUNC3(s, "magenta") == 0 || FUNC4(s, "5") == 0)
		return (5);
	if (FUNC3(s, "cyan") == 0 || FUNC4(s, "6") == 0)
		return (6);
	if (FUNC3(s, "white") == 0 || FUNC4(s, "7") == 0)
		return (7);
	if (FUNC3(s, "brightblack") == 0 || FUNC4(s, "90") == 0)
		return (90);
	if (FUNC3(s, "brightred") == 0 || FUNC4(s, "91") == 0)
		return (91);
	if (FUNC3(s, "brightgreen") == 0 || FUNC4(s, "92") == 0)
		return (92);
	if (FUNC3(s, "brightyellow") == 0 || FUNC4(s, "93") == 0)
		return (93);
	if (FUNC3(s, "brightblue") == 0 || FUNC4(s, "94") == 0)
		return (94);
	if (FUNC3(s, "brightmagenta") == 0 || FUNC4(s, "95") == 0)
		return (95);
	if (FUNC3(s, "brightcyan") == 0 || FUNC4(s, "96") == 0)
		return (96);
	if (FUNC3(s, "brightwhite") == 0 || FUNC4(s, "97") == 0)
		return (97);
	return (-1);
}