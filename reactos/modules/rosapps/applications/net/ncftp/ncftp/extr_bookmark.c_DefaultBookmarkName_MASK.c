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
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (char*,char*) ; 

void
FUNC5(char *dst, size_t siz, char *src)
{
	char str[128];
	const char *token;
	const char *cp;

	(void) FUNC1(str, src);

	/* Pick the first "significant" part of the hostname.  Usually
	 * this is the first word in the name, but if it's something like
	 * ftp.unl.edu, we would want to choose "unl" and not "ftp."
	 */
	token = str;
	if ((token = FUNC4(str, ".")) == NULL)
		token = str;
	else if ((FUNC0(token, "ftp", 3)) || (FUNC0(token, "www", 3))) {
		if ((token = FUNC4(NULL, ".")) == NULL)
			token = "";
	}
	for (cp = token; ; cp++) {
		if (*cp == '\0') {
			/* Token was all digits, like an IP address perhaps. */
			token = "";
		}
		if (!FUNC3((int) *cp))
			break;
	}
	(void) FUNC2(dst, token, siz);
}