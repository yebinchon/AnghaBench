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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 

__attribute__((used)) static void
FUNC4(FILE *fout, const char *tosnap, const char *fromsnap,
    uint64_t size, boolean_t parsable)
{
	if (parsable) {
		if (fromsnap != NULL) {
			(void) FUNC1(fout, "incremental\t%s\t%s",
			    fromsnap, tosnap);
		} else {
			(void) FUNC1(fout, "full\t%s",
			    tosnap);
		}
	} else {
		if (fromsnap != NULL) {
			if (FUNC2(fromsnap, '@') == NULL &&
			    FUNC2(fromsnap, '#') == NULL) {
				(void) FUNC1(fout, FUNC0(TEXT_DOMAIN,
				    "send from @%s to %s"),
				    fromsnap, tosnap);
			} else {
				(void) FUNC1(fout, FUNC0(TEXT_DOMAIN,
				    "send from %s to %s"),
				    fromsnap, tosnap);
			}
		} else {
			(void) FUNC1(fout, FUNC0(TEXT_DOMAIN,
			    "full send of %s"),
			    tosnap);
		}
	}

	if (parsable) {
		(void) FUNC1(fout, "\t%llu",
		    (longlong_t)size);
	} else if (size != 0) {
		char buf[16];
		FUNC3(size, buf, sizeof (buf));
		(void) FUNC1(fout, FUNC0(TEXT_DOMAIN,
		    " estimated size is %s"), buf);
	}
	(void) FUNC1(fout, "\n");
}