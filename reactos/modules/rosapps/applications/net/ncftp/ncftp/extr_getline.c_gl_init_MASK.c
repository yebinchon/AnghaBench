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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int gl_init_done ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void)
/* set up variables and terminal */
{
    const char *cp;
    int w;

    if (gl_init_done < 0) {		/* -1 only on startup */
	cp = (const char *) FUNC2("COLUMNS");
	if (cp != NULL) {
	    w = FUNC1(cp);
	    if (w > 20)
	        FUNC6(w);
	}
	cp = (const char *) FUNC2("ROWS");
	if (cp != NULL) {
	    w = FUNC1(cp);
	    if (w > 10)
	        FUNC5(w);
	}
        FUNC7();
    }
    if (FUNC0(0) == 0 || FUNC0(1) == 0)
	FUNC4("\n*** Error: getline(): not interactive, use stdio.\n");
    FUNC3();
    gl_init_done = 1;
}