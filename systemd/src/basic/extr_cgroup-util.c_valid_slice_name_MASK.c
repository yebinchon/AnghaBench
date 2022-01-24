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
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  UNIT_NAME_PLAIN ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(const char *p, size_t n) {

        if (!p)
                return false;

        if (n < FUNC0("x.slice"))
                return false;

        if (FUNC2(p + n - 6, ".slice", 6) == 0) {
                char buf[n+1], *c;

                FUNC3(buf, p, n);
                buf[n] = 0;

                c = FUNC1(buf);

                return FUNC4(c, UNIT_NAME_PLAIN);
        }

        return false;
}