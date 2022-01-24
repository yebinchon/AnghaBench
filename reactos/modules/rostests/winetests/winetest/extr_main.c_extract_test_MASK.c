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
struct wine_test {char* name; char* exename; } ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  R_FATAL ; 
 int /*<<< orphan*/  R_STEP ; 
 int /*<<< orphan*/  TESTRES ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  testexe ; 
 char* FUNC8 (char*,int) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (struct wine_test *test, const char *dir, LPTSTR res_name)
{
    BYTE* code;
    DWORD size;
    FILE* fout;
    char *exepos;

    code = FUNC1 (res_name, TESTRES, &size);
    if (!code) FUNC5 (R_FATAL, "Can't find test resource %s: %d",
                       res_name, FUNC0 ());
    test->name = FUNC9( res_name );
    test->exename = FUNC6 (NULL, "%s/%s", dir, test->name);
    exepos = FUNC7 (test->name, testexe);
    if (!exepos) FUNC5 (R_FATAL, "Not an .exe file: %s", test->name);
    *exepos = 0;
    test->name = FUNC8 (test->name, exepos - test->name + 1);
    FUNC5 (R_STEP, "Extracting: %s", test->name);

    if (!(fout = FUNC3 (test->exename, "wb")) ||
        (FUNC4 (code, size, 1, fout) != 1) ||
        FUNC2 (fout)) FUNC5 (R_FATAL, "Failed to write file %s.",
                               test->exename);
}