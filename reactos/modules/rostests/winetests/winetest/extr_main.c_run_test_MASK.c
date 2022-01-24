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
struct wine_test {int /*<<< orphan*/  name; int /*<<< orphan*/  exename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char const*,...) ; 

__attribute__((used)) static void
FUNC6 (struct wine_test* test, const char* subtest, const char *tempdir)
{
    int status;
    const char* file = FUNC2(test->name, subtest);
    const char* rev = FUNC1(file);
    char *cmd = FUNC4 (NULL, "%s %s", test->exename, subtest);

    FUNC5 ("%s:%s start %s %s\n", test->name, subtest, file, rev);
    status = FUNC3 (cmd, NULL, tempdir, 120000);
    FUNC0 (cmd);
    FUNC5 ("%s:%s done (%d)\n", test->name, subtest, status);
}