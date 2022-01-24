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
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC7(const char *p) {
        size_t n;

        if (FUNC1(p))
                return NULL;

        p += FUNC6(p, "/");

        n = FUNC5(p, "/");
        if (n < FUNC0("user@x.service"))
                return NULL;

        if (FUNC2(p, "user@", 5) == 0 && FUNC2(p + n - 8, ".service", 8) == 0) {
                char buf[n - 5 - 8 + 1];

                FUNC3(buf, p + 5, n - 5 - 8);
                buf[n - 5 - 8] = 0;

                /* Note that user manager services never need unescaping,
                 * since they cannot conflict with the kernel's own
                 * names, hence we don't need to call cg_unescape()
                 * here. */

                if (FUNC4(buf, NULL) < 0)
                        return NULL;

                p += n;
                p += FUNC6(p, "/");

                return p;
        }

        return NULL;
}