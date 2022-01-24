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
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(const char *path) {
        char process_name[11];
        const char *p;
        size_t l;

        /* This resulting string must fit in 10 chars (i.e. the length
         * of "/sbin/init") to look pretty in /bin/ps */

        p = FUNC0(path);
        if (FUNC1(p)) {
                FUNC3("(...)");
                return;
        }

        l = FUNC4(p);
        if (l > 8) {
                /* The end of the process name is usually more
                 * interesting, since the first bit might just be
                 * "systemd-" */
                p = p + l - 8;
                l = 8;
        }

        process_name[0] = '(';
        FUNC2(process_name+1, p, l);
        process_name[1+l] = ')';
        process_name[1+l+1] = 0;

        FUNC3(process_name);
}