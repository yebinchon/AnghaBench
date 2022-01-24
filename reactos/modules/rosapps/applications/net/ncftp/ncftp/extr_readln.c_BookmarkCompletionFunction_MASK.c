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
struct TYPE_2__ {int /*<<< orphan*/  bookmarkName; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* gBookmarkTable ; 
 int gNumBookmarks ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(const char *text, int state)
{
	char *cp;
	size_t textlen;
	int i, matches;

	if ((gBookmarkTable == NULL) || (state >= gNumBookmarks))
		return (NULL);

	textlen = FUNC2(text);
	if (textlen == 0) {
		cp = FUNC1(gBookmarkTable[state].bookmarkName);
	} else {
		cp = NULL;
		for (i=0, matches=0; i<gNumBookmarks; i++) {
			if (FUNC0(gBookmarkTable[i].bookmarkName, text, textlen) == 0) {
				if (matches >= state) {
					cp = FUNC1(gBookmarkTable[i].bookmarkName);
					break;
				}
				matches++;
			}
		}
	}
	return cp;
}