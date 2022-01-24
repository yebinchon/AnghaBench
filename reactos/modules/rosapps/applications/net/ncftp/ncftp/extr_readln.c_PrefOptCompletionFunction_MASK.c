#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  varname; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int gNumPrefOpts ; 
 TYPE_1__* gPrefOpts ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(const char *text, int state)
{
	char *cp;
	size_t textlen;
	int i, matches;

	if (state >= gNumPrefOpts)
		return (NULL);

	textlen = FUNC2(text);
	if (textlen == 0) {
		cp = FUNC1(gPrefOpts[state].varname);
	} else {
		cp = NULL;
		for (i=0, matches=0; i<gNumPrefOpts; i++) {
			if (FUNC0(gPrefOpts[i].varname, text, textlen) == 0) {
				if (matches >= state) {
					cp = FUNC1(gPrefOpts[i].varname);
					break;
				}
				matches++;
			}
		}
	}
	return cp;
}