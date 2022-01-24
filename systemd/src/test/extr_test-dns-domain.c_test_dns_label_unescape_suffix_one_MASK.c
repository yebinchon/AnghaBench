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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,char const**,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,char const*,size_t,int,int) ; 
 int FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(const char *what, const char *expect1, const char *expect2, size_t buffer_sz, int ret1, int ret2) {
        char buffer[buffer_sz];
        const char *label;
        int r;

        FUNC2("%s, %s, %s, %zu, %d, %d", what, expect1, expect2, buffer_sz, ret1, ret2);

        label = what + FUNC4(what);

        r = FUNC1(what, &label, buffer, buffer_sz);
        FUNC0(r == ret1);
        if (r >= 0)
                FUNC0(FUNC3(buffer, expect1));

        r = FUNC1(what, &label, buffer, buffer_sz);
        FUNC0(r == ret2);
        if (r >= 0)
                FUNC0(FUNC3(buffer, expect2));
}