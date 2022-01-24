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
struct wine_test {int subtest_count; char* name; int /*<<< orphan*/ * subtests; int /*<<< orphan*/  exename; } ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  R_ERROR ; 
 int /*<<< orphan*/  R_FATAL ; 
 int /*<<< orphan*/  R_WARNING ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (struct wine_test*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char const*) ; 
 char* FUNC11 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  whitespace ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 
 void* FUNC14 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC15 (const char *tempdir, struct wine_test *test, LPTSTR res_name)
{
    char *subname, *cmd;
    FILE *subfile;
    size_t total;
    char buffer[8192], *index;
    static const char header[] = "Valid test names:";
    int allocated;

    test->subtest_count = 0;

    subname = FUNC12 (0, "sub");
    if (!subname) FUNC6 (R_FATAL, "Can't name subtests file.");

    FUNC0 (test, tempdir, res_name);
    cmd = FUNC9 (NULL, "%s --list", test->exename);
    FUNC7 (cmd, subname, tempdir, 5000);
    FUNC4 (cmd);

    subfile = FUNC2 (subname, "r");
    if (!subfile) {
        FUNC6 (R_ERROR, "Can't open subtests output of %s: %d",
                test->name, errno);
        goto quit;
    }
    total = FUNC3 (buffer, 1, sizeof buffer, subfile);
    FUNC1 (subfile);
    if (sizeof buffer == total) {
        FUNC6 (R_ERROR, "Subtest list of %s too big.",
                test->name, sizeof buffer);
        goto quit;
    }
    buffer[total] = 0;

    index = FUNC10 (buffer, header);
    if (!index) {
        FUNC6 (R_ERROR, "Can't parse subtests output of %s",
                test->name);
        goto quit;
    }
    index += sizeof header;

    allocated = 10;
    test->subtests = FUNC13 (allocated * sizeof(char*));
    index = FUNC11 (index, whitespace);
    while (index) {
        if (test->subtest_count == allocated) {
            allocated *= 2;
            test->subtests = FUNC14 (test->subtests,
                                       allocated * sizeof(char*));
        }
        test->subtests[test->subtest_count++] = FUNC8 (index);
        index = FUNC11 (NULL, whitespace);
    }
    test->subtests = FUNC14 (test->subtests,
                               test->subtest_count * sizeof(char*));

 quit:
    if (FUNC5 (subname))
        FUNC6 (R_WARNING, "Can't delete file '%s': %d",
                subname, errno);
    FUNC4 (subname);
}