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
 char* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC4 (char*) ; 

char *FUNC5(const char *prompt)
{
	static char line[500], *p;
	int n;
	FUNC1(prompt, stdout);
	p = FUNC0(line, sizeof line, stdin);
	if (p) {
		n = FUNC4(line);
		if (n > 0 && line[n-1] == '\n')
			line[--n] = 0;
		p = FUNC2(n+1);
		FUNC3(p, line, n+1);
		return p;
	}
	return NULL;
}