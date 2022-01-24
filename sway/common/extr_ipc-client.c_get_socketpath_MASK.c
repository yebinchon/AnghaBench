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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 char* FUNC5 (char const*) ; 

char *FUNC6(void) {
	const char *swaysock = FUNC1("SWAYSOCK");
	if (swaysock) {
		return FUNC5(swaysock);
	}
	char *line = NULL;
	size_t line_size = 0;
	FILE *fp = FUNC4("sway --get-socketpath 2>/dev/null", "r");
	if (fp) {
		ssize_t nret = FUNC2(&line, &line_size, fp);
		FUNC3(fp);
		if (nret > 0) {
			// remove trailing newline, if there is one
			if (line[nret - 1] == '\n') {
				line[nret - 1] = '\0';
			}
			return line;
		}
	}
	const char *i3sock = FUNC1("I3SOCK");
	if (i3sock) {
		FUNC0(line);
		return FUNC5(i3sock);
	}
	fp = FUNC4("i3 --get-socketpath 2>/dev/null", "r");
	if (fp) {
		ssize_t nret = FUNC2(&line, &line_size, fp);
		FUNC3(fp);
		if (nret > 0) {
			// remove trailing newline, if there is one
			if (line[nret - 1] == '\n') {
				line[nret - 1] = '\0';
			}
			return line;
		}
	}
	FUNC0(line);
	return NULL;
}