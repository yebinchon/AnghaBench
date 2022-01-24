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
typedef  char WCHAR ;
struct TYPE_8__ {TYPE_3__* Peb; } ;
struct TYPE_7__ {TYPE_2__* ProcessParameters; } ;
struct TYPE_5__ {int /*<<< orphan*/  Handle; } ;
struct TYPE_6__ {TYPE_1__ CurrentDirectory; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_INVALID_NAME ; 
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
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(void)
{
    WCHAR curdir[MAX_PATH];
    WCHAR tmpdir[MAX_PATH];
    BOOL ret;
    static const WCHAR tmp_dir_name[] = {'P','l','e','a','s','e',' ','R','e','m','o','v','e',' ','M','e',0};
    static const WCHAR questionW[] = {'?',0};

    FUNC3(MAX_PATH, tmpdir);
    FUNC9(tmpdir, tmp_dir_name);
    ret = FUNC0(tmpdir, NULL);
    if (!ret && FUNC2() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC12("CreateDirectoryW is not available\n");
        return;
    }

    FUNC11(ret == TRUE, "CreateDirectoryW should always succeed\n");

    FUNC1(MAX_PATH, curdir);
    FUNC11(FUNC6(tmpdir), "SetCurrentDirectoryW failed\n");

    FUNC7(0xdeadbeef);
    FUNC11(!FUNC5(tmpdir), "RemoveDirectoryW succeeded\n");
    FUNC11(FUNC2() == ERROR_SHARING_VIOLATION,
       "Expected ERROR_SHARING_VIOLATION, got %u\n", FUNC2());

    FUNC8(FUNC4()->Peb->ProcessParameters->CurrentDirectory.Handle,
                        FILE_TRAVERSE | SYNCHRONIZE);

    FUNC6(curdir);
    ret = FUNC5(tmpdir);
    FUNC11(ret == TRUE, "RemoveDirectoryW should always succeed\n");

    FUNC9(tmpdir, questionW);
    ret = FUNC5(tmpdir);
    FUNC11(ret == FALSE && FUNC2() == ERROR_INVALID_NAME,
       "RemoveDirectoryW with wildcard should fail with error 183, ret=%s error=%d\n",
       ret ? " True" : "False", FUNC2());

    tmpdir[FUNC10(tmpdir) - 1] = '*';
    ret = FUNC5(tmpdir);
    FUNC11(ret == FALSE && FUNC2() == ERROR_INVALID_NAME,
       "RemoveDirectoryW with * wildcard name should fail with error 183, ret=%s error=%d\n",
       ret ? " True" : "False", FUNC2());
}