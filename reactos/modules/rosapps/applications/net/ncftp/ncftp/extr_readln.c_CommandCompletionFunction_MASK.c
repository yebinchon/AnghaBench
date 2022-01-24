#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* CommandPtr ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* kNoCommand ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(const char *text, int state)
{
	char *cp;
	size_t textlen;
	int i, matches;
	CommandPtr cmdp;

	textlen = FUNC3(text);
	if (textlen == 0) {
		cp = NULL;
	} else {
		cp = NULL;
		for (i=0, matches=0; ; i++) {
			cmdp = FUNC0(i);
			if (cmdp == kNoCommand)
				break;
			if (FUNC1(cmdp->name, text, textlen) == 0) {
				if (matches >= state) {
					cp = FUNC2(cmdp->name);
					break;
				}
				matches++;
			}
		}
	}
	return cp;
}