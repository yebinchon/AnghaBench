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
 int ENOMEM ; 
 int EXTRACT_RETAIN_ESCAPE ; 
 int EXTRACT_UNQUOTE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const**,char**,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC5 (char***,char*) ; 
 char** FUNC6 (char**) ; 

int FUNC7(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        char ***sv = data;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        if (FUNC2(rvalue)) {
                *sv = FUNC6(*sv);
                return 0;
        }

        for (;;) {
                char *word = NULL;

                r = FUNC1(&rvalue, &word, NULL, EXTRACT_UNQUOTE|EXTRACT_RETAIN_ESCAPE);
                if (r == 0)
                        break;
                if (r == -ENOMEM)
                        return FUNC3();
                if (r < 0) {
                        FUNC4(unit, LOG_ERR, filename, line, r, "Invalid syntax, ignoring: %s", rvalue);
                        break;
                }

                r = FUNC5(sv, word);
                if (r < 0)
                        return FUNC3();
        }

        return 0;
}