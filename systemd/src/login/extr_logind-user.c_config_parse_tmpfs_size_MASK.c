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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*,int,scalar_t__*) ; 
 scalar_t__ FUNC5 (int,unsigned int) ; 

int FUNC6(
                const char* unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        uint64_t *sz = data;
        int r;

        FUNC1(filename);
        FUNC1(lvalue);
        FUNC1(rvalue);
        FUNC1(data);

        /* First, try to parse as percentage */
        r = FUNC3(rvalue);
        if (r > 0 && r < 1000)
                *sz = FUNC5(r, 1000U);
        else {
                uint64_t k;

                /* If the passed argument was not a percentage, or out of range, parse as byte size */

                r = FUNC4(rvalue, 1024, &k);
                if (r >= 0 && (k <= 0 || (uint64_t) (size_t) k != k))
                        r = -ERANGE;
                if (r < 0) {
                        FUNC2(unit, LOG_ERR, filename, line, r, "Failed to parse size value '%s', ignoring: %m", rvalue);
                        return 0;
                }

                *sz = FUNC0((size_t) k);
        }

        return 0;
}