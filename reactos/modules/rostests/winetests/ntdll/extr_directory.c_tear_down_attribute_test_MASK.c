#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const WCHAR ;
struct TYPE_2__ {int attr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FUNC1 () ; 
 int MAX_PATH ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  backslashW ; 
 int /*<<< orphan*/  dotW ; 
 int /*<<< orphan*/  dotdotW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int test_dir_count ; 
 TYPE_1__* testfiles ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC8(const WCHAR *testdir)
{
    int i;

    for (i = 0; i < test_dir_count; i++) {
        int ret;
        WCHAR buf[MAX_PATH];
        if (FUNC4(testfiles[i].name, dotW) == 0 || FUNC4(testfiles[i].name, dotdotW) == 0)
            continue;
        FUNC5( buf, testdir );
        FUNC3( buf, backslashW );
        FUNC3( buf, testfiles[i].name );
        if (testfiles[i].attr & FILE_ATTRIBUTE_DIRECTORY) {
            ret = FUNC2(buf);
            FUNC6(ret || (FUNC1() == ERROR_PATH_NOT_FOUND),
               "Failed to rmdir %s, error %d\n", FUNC7(buf), FUNC1());
        } else {
            ret = FUNC0(buf);
            FUNC6(ret || (FUNC1() == ERROR_PATH_NOT_FOUND),
               "Failed to rm %s, error %d\n", FUNC7(buf), FUNC1());
        }
    }
    FUNC2(testdir);
}