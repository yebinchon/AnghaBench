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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  backslashW ; 
 int /*<<< orphan*/  dotW ; 
 int /*<<< orphan*/  dotdotW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,...) ; 
 int test_dir_count ; 
 TYPE_1__* testfiles ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC9(const WCHAR *testdir)
{
    int i;
    BOOL ret;

    ret = FUNC1(testdir, NULL);
    FUNC7(ret, "couldn't create dir %s, error %d\n", FUNC8(testdir), FUNC3());

    for (i=0; i < test_dir_count; i++) {
        WCHAR buf[MAX_PATH];

        if (FUNC5(testfiles[i].name, dotW) == 0 || FUNC5(testfiles[i].name, dotdotW) == 0)
            continue;
        FUNC6( buf, testdir );
        FUNC4( buf, backslashW );
        FUNC4( buf, testfiles[i].name );
        if (testfiles[i].attr & FILE_ATTRIBUTE_DIRECTORY) {
            ret = FUNC1(buf, NULL);
            FUNC7(ret, "couldn't create dir %s, error %d\n", FUNC8(buf), FUNC3());
        } else {
            HANDLE h = FUNC2(buf,
                                   GENERIC_READ|GENERIC_WRITE,
                                   0, NULL, CREATE_ALWAYS,
                                   testfiles[i].attr, 0);
            FUNC7( h != INVALID_HANDLE_VALUE, "failed to create temp file %s\n", FUNC8(buf) );
            FUNC0(h);
        }
    }
}