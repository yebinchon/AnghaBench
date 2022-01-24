#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* Peb; } ;
struct TYPE_7__ {TYPE_2__* ProcessParameters; } ;
struct TYPE_5__ {int /*<<< orphan*/  Handle; } ;
struct TYPE_6__ {TYPE_1__ CurrentDirectory; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INVALID_NAME ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 scalar_t__ ERROR_SHARING_VIOLATION ; 
 scalar_t__ FALSE ; 
 int FILE_TRAVERSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int MAX_PATH ; 
 TYPE_4__* FUNC4 () ; 
 scalar_t__ FUNC5 (char*) ; 
 int SYNCHRONIZE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 

__attribute__((used)) static void FUNC12(void)
{
    char curdir[MAX_PATH];
    char tmpdir[MAX_PATH];
    BOOL ret;

    FUNC3(MAX_PATH, tmpdir);
    FUNC9(tmpdir, "Please Remove Me");
    ret = FUNC0(tmpdir, NULL);
    FUNC11(ret == TRUE, "CreateDirectoryA should always succeed\n");

    FUNC1(MAX_PATH, curdir);
    FUNC11(FUNC6(tmpdir), "SetCurrentDirectoryA failed\n");

    FUNC7(0xdeadbeef);
    FUNC11(!FUNC5(tmpdir), "RemoveDirectoryA succeeded\n");
    FUNC11(FUNC2() == ERROR_SHARING_VIOLATION,
       "Expected ERROR_SHARING_VIOLATION, got %u\n", FUNC2());

    FUNC8(FUNC4()->Peb->ProcessParameters->CurrentDirectory.Handle,
                        FILE_TRAVERSE | SYNCHRONIZE);

    FUNC6(curdir);
    ret = FUNC5(tmpdir);
    FUNC11(ret == TRUE, "RemoveDirectoryA should always succeed\n");

    FUNC9(tmpdir, "?");
    ret = FUNC5(tmpdir);
    FUNC11(ret == FALSE && (FUNC2() == ERROR_INVALID_NAME ||
			FUNC2() == ERROR_PATH_NOT_FOUND),
       "RemoveDirectoryA with ? wildcard name should fail, ret=%s error=%d\n",
       ret ? " True" : "False", FUNC2());

    tmpdir[FUNC10(tmpdir) - 1] = '*';
    ret = FUNC5(tmpdir);
    FUNC11(ret == FALSE && (FUNC2() == ERROR_INVALID_NAME ||
			FUNC2() == ERROR_PATH_NOT_FOUND),
       "RemoveDirectoryA with * wildcard name should fail, ret=%s error=%d\n",
       ret ? " True" : "False", FUNC2());
}