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
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 unsigned int PATH_CHECK_ABSOLUTE ; 
 unsigned int PATH_CHECK_FATAL ; 
 unsigned int PATH_CHECK_RELATIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*,char*,char*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(
                char *path,
                unsigned flag,
                const char *unit,
                const char *filename,
                unsigned line,
                const char *lvalue) {

        bool fatal = flag & PATH_CHECK_FATAL;

        FUNC2(!FUNC0(flag, PATH_CHECK_ABSOLUTE | PATH_CHECK_RELATIVE));

        if (!FUNC10(path))
                return FUNC4(unit, LOG_ERR, filename, line, path);

        if (flag & (PATH_CHECK_ABSOLUTE | PATH_CHECK_RELATIVE)) {
                bool absolute;

                absolute = FUNC5(path);

                if (!absolute && (flag & PATH_CHECK_ABSOLUTE))
                        return FUNC3(unit, LOG_ERR, filename, line, FUNC1(EINVAL),
                                          "%s= path is not absolute%s: %s",
                                          lvalue, fatal ? "" : ", ignoring", path);

                if (absolute && (flag & PATH_CHECK_RELATIVE))
                        return FUNC3(unit, LOG_ERR, filename, line, FUNC1(EINVAL),
                                          "%s= path is absolute%s: %s",
                                          lvalue, fatal ? "" : ", ignoring", path);
        }

        FUNC8(path, true);

        if (!FUNC7(path))
                return FUNC3(unit, LOG_ERR, filename, line, FUNC1(EINVAL),
                                  "%s= path has invalid length (%zu bytes)%s.",
                                  lvalue, FUNC9(path), fatal ? "" : ", ignoring");

        if (!FUNC6(path))
                return FUNC3(unit, LOG_ERR, filename, line, FUNC1(EINVAL),
                                  "%s= path is not normalized%s: %s",
                                  lvalue, fatal ? "" : ", ignoring", path);

        return 0;
}