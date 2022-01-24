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
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int USHRT_MAX ; 
 int cached_lines ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int*) ; 

unsigned FUNC3(void) {
        const char *e;
        int l;

        if (cached_lines > 0)
                return cached_lines;

        l = 0;
        e = FUNC1("LINES");
        if (e)
                (void) FUNC2(e, &l);

        if (l <= 0 || l > USHRT_MAX) {
                l = FUNC0(STDOUT_FILENO);
                if (l <= 0)
                        l = 24;
        }

        cached_lines = l;
        return cached_lines;
}