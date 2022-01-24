#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char** we_wordv; } ;
typedef  TYPE_1__ wordexp_t ;

/* Variables and functions */
 char** FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char const*,char const*) ; 
 char* FUNC5 (char const*) ; 
 int FUNC6 (char const*) ; 

int
FUNC7 (const char *words, wordexp_t *pwordexp, int flags)
{
	char *expanded = NULL;
	const char *home = FUNC2("HOME");

	if (home && words[0] == '~' && (words[1] == '/' || words[1] == 0)) {
		size_t len = FUNC6(home) + FUNC6(words + 1) + 1;
		if ((expanded = FUNC3(len)) && !FUNC4(expanded, len, "%s%s", home, words + 1)) {
			FUNC1(expanded);
			return -1;
		}
	} else {
		expanded = FUNC5(words);
	}

	if (!expanded)
		return -1;

	pwordexp->we_wordv = FUNC0(2, sizeof(*pwordexp->we_wordv));
	if (!pwordexp->we_wordv) {
		FUNC1(expanded);
		return -1;
	}
	pwordexp->we_wordv[0] = expanded;

	return 0;
}