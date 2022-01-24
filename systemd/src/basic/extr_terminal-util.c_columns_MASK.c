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
 int cached_columns ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int*) ; 

unsigned FUNC3(void) {
        const char *e;
        int c;

        if (cached_columns > 0)
                return cached_columns;

        c = 0;
        e = FUNC1("COLUMNS");
        if (e)
                (void) FUNC2(e, &c);

        if (c <= 0 || c > USHRT_MAX) {
                c = FUNC0(STDOUT_FILENO);
                if (c <= 0)
                        c = 80;
        }

        cached_columns = c;
        return cached_columns;
}