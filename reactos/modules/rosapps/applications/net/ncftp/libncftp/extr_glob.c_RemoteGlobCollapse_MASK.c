#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char* string ;
typedef  int /*<<< orphan*/  patPrefix ;
struct TYPE_8__ {TYPE_1__* first; } ;
struct TYPE_7__ {char* line; struct TYPE_7__* next; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__* LineListPtr ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* kGlobChars ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC6(const char *pattern, LineListPtr fileList)
{
	LinePtr lp, nextLine;
	string patPrefix;
	string cur, prev;
	char *endp, *cp, *dp;
	const char *pp;
	int wasGlobChar;
	size_t plen;

	/* Copy all characters before the first glob-char. */
	dp = patPrefix;
	endp = dp + sizeof(patPrefix) - 1;
	wasGlobChar = 0;
	for (cp = (char *) pattern; dp < endp; ) {
		for (pp=kGlobChars; *pp != '\0'; pp++) {
			if (*pp == *cp) {
				wasGlobChar = 1;
				break;
			}
		}
		if (wasGlobChar)
			break;
		*dp++ = *cp++;
	}
	*dp = '\0';
	plen = (size_t) (dp - patPrefix);

	*prev = '\0';
	for (lp=fileList->first; lp != NULL; lp = nextLine) {
		nextLine = lp->next;
		if (FUNC5(lp->line, patPrefix, plen) == 0) {
			(void) FUNC2(cur, lp->line + plen);
			cp = FUNC4(cur, '/');
			if (cp == NULL)
				cp = FUNC4(cur, '\\');
			if (cp != NULL)
				*cp = '\0';
			if ((*prev != '\0') && (FUNC1(cur, prev))) {
				nextLine = FUNC0(fileList, lp);
			} else {
				(void) FUNC2(prev, cur);
				/* We are playing with a dynamically
				 * allocated string, but since the
				 * following expression is guaranteed
				 * to be the same or shorter, we won't
				 * overwrite the bounds.
				 */
				(void) FUNC3(lp->line, "%s%s", patPrefix, cur);
			}
		}
	}
}