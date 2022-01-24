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
struct servent {scalar_t__ s_port; } ;
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 unsigned int FUNC1 (char*) ; 
 struct servent* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const* const,int) ; 

__attribute__((used)) static unsigned int
FUNC6(const char *const s)
{
	char str[64];
	char *cp;
	struct servent *sp;

	FUNC5(str, s, sizeof(str) - 1);
	str[sizeof(str) - 1] = '\0';
	cp = str;
	if (FUNC3(*cp)) {
		while (FUNC3(*cp))
			cp++;
		*cp = '\0';
		return (FUNC1(str));
	}
	for (;; cp++) {
		if ((*cp == '\0')
			|| ((!FUNC0(*cp)) && (*cp != '-') && (*cp != '_')))
				break;
	}
	*cp = '\0';

	sp = FUNC2(str, "tcp");
	if (sp != NULL) {
		/* endservent(); */
		return ((unsigned int) FUNC4((unsigned short) sp->s_port));
	}
	sp = FUNC2(str, "udp");
	if (sp != NULL) {
		/* endservent(); */
		return ((unsigned int) FUNC4((unsigned short) sp->s_port));
	}
	return (0);	/* error */
}