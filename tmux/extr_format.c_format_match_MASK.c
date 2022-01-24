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
struct format_modifier {int argc; char** argv; } ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int FNM_CASEFOLD ; 
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int REG_NOSUB ; 
 scalar_t__ FUNC0 (char const*,char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(struct format_modifier *fm, const char *pattern, const char *text)
{
	const char	*s = "";
	regex_t		 r;
	int		 flags = 0;

	if (fm->argc >= 1)
		s = fm->argv[0];
	if (FUNC4(s, 'r') == NULL) {
		if (FUNC4(s, 'i') != NULL)
			flags |= FNM_CASEFOLD;
		if (FUNC0(pattern, text, flags) != 0)
			return (FUNC5("0"));
	} else {
		flags = REG_EXTENDED|REG_NOSUB;
		if (FUNC4(s, 'i') != NULL)
			flags |= REG_ICASE;
		if (FUNC1(&r, pattern, flags) != 0)
			return (FUNC5("0"));
		if (FUNC2(&r, text, 0, NULL, 0) != 0) {
			FUNC3(&r);
			return (FUNC5("0"));
		}
		FUNC3(&r);
	}
	return (FUNC5("1"));
}