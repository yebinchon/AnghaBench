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
struct timespec {int dummy; } ;
typedef  int WriteStringFileFlags ;
typedef  char const FILE ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ EOF ; 
 int WRITE_STRING_FILE_AVOID_NEWLINE ; 
 int WRITE_STRING_FILE_DISABLE_BUFFER ; 
 int WRITE_STRING_FILE_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int errno ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char,char const*) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct timespec*) ; 
 char* FUNC9 (char const*,char*) ; 

int FUNC10(
                FILE *f,
                const char *line,
                WriteStringFileFlags flags,
                struct timespec *ts) {

        bool needs_nl;
        int r;

        FUNC0(f);
        FUNC0(line);

        if (FUNC2(f))
                return -EIO;

        needs_nl = !(flags & WRITE_STRING_FILE_AVOID_NEWLINE) && !FUNC1(line, "\n");

        if (needs_nl && (flags & WRITE_STRING_FILE_DISABLE_BUFFER)) {
                /* If STDIO buffering was disabled, then let's append the newline character to the string itself, so
                 * that the write goes out in one go, instead of two */

                line = FUNC9(line, "\n");
                needs_nl = false;
        }

        if (FUNC7(line, f) == EOF)
                return -errno;

        if (needs_nl)
                if (FUNC6('\n', f) == EOF)
                        return -errno;

        if (flags & WRITE_STRING_FILE_SYNC)
                r = FUNC4(f);
        else
                r = FUNC3(f);
        if (r < 0)
                return r;

        if (ts) {
                struct timespec twice[2] = {*ts, *ts};

                if (FUNC8(FUNC5(f), twice) < 0)
                        return -errno;
        }

        return 0;
}