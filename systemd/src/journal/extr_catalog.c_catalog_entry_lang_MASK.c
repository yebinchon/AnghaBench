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
 int /*<<< orphan*/  EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(
                const char* filename,
                unsigned line,
                const char* t,
                const char* deflang,
                char **ret) {

        size_t c;
        char *z;

        c = FUNC5(t);
        if (c < 2)
                return FUNC1(FUNC0(EINVAL),
                                       "[%s:%u] Language too short.", filename, line);
        if (c > 31)
                return FUNC1(FUNC0(EINVAL),
                                       "[%s:%u] language too long.", filename, line);

        if (deflang) {
                if (FUNC4(t, deflang)) {
                        FUNC2("[%s:%u] language specified unnecessarily", filename, line);
                        return 0;
                }

                FUNC2("[%s:%u] language differs from default for file", filename, line);
        }

        z = FUNC3(t);
        if (!z)
                return -ENOMEM;

        *ret = z;
        return 0;
}