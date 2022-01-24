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
typedef  scalar_t__ time_t ;
struct tm {int tm_hour; int tm_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (int) ; 
 struct tm* FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int*,int*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static time_t
FUNC10(const char *s)
{
	char *cp;
	char s2[64];
	time_t now, when;
	int toff, n, c, hr, min;
	struct tm lt, *ltp;

	FUNC0(s2, s);
	cp = FUNC7(s2, ':');
	if ((s2[0] == 'n') || (s2[0] == '+')) {
		/* "now + XX hours" or
		 * "+ XX hours"
		 */
		cp = FUNC7(s2, '+');
		if (cp == NULL)
			return ((time_t) -1);
		++cp;
		toff = 0;
		n = 0;
		(void) FUNC6(cp, "%d%n", &toff, &n);
		if ((n <= 0) || (toff <= 0))
			return ((time_t) -1);
		cp += n;
		while ((*cp != '\0') && (!FUNC2(*cp)))
			cp++;
		c = *cp;
		if (FUNC3(c))
			c = FUNC9(c);
		if (c == 's') {
			/* seconds */
		} else if (c == 'm') {
			/* minutes */
			toff *= 60;
		} else if (c == 'h') {
			/* hours */
			toff *= 3600;
		} else if (c == 'd') {
			/* days */
			toff *= 86400;
		} else {
			/* unrecognized unit */
			return ((time_t) -1);
		}
		FUNC8(&now);
		when = now + (time_t) toff;
	} else if (cp != NULL) {
		/* HH:MM, as in "23:38" */
		FUNC8(&now);
		ltp = FUNC4(&now);
		if (ltp == NULL)
			return ((time_t) -1);	/* impossible */
		lt = *ltp;
		*cp = ' ';
		hr = -1;
		min = -1;
		(void) FUNC6(s2, "%d%d", &hr, &min);
		if ((hr < 0) || (min < 0))
			return ((time_t) -1);
		lt.tm_hour = hr;
		lt.tm_min = min;
		when = FUNC5(&lt);
		if ((when == (time_t) -1) || (when == (time_t) 0))
			return (when);
		if (when < now)
			when += (time_t) 86400;
	} else {
		when = FUNC1(s2);
	}
	return (when);
}