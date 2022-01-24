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
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *envname, const char *fallback, const char **ret) {
        FUNC0(ret);

        if (envname) {
                const char *e;

                e = FUNC2(envname);
                if (e && FUNC1(e)) {
                        *ret = e;
                        return 0;
                }
        }

        if (fallback) {
                *ret = fallback;
                return 0;
        }

        return -ENXIO;
}