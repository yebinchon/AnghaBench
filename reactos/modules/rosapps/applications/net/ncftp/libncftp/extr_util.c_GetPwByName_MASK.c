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
struct passwd {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 () ; 
 struct passwd* FUNC2 (char*) ; 

struct passwd *
FUNC3(void)
{
	char *cp;
	struct passwd *pw;

	cp = FUNC1();
	if (cp == NULL) {
		cp = (char *) FUNC0("LOGNAME");
		if (cp == NULL)
			cp = (char *) FUNC0("USER");
	}
	pw = NULL;
	if (cp != NULL)
		pw = FUNC2(cp);
	return (pw);
}