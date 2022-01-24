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
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

char *FUNC4(void) {
        const char *e;

        e = FUNC1("USER");
        if (e)
                return FUNC2(e);

        return FUNC3(FUNC0());
}