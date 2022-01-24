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
typedef  char* PCSTR ;
typedef  int KMT_OPERATION ;
typedef  int INT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  KMTEST_DEVICE_PATH ; 
 int KMT_DO_NOTHING ; 
#define  KMT_LIST_ALL_TESTS 130 
#define  KMT_LIST_TESTS 129 
#define  KMT_RUN_TEST 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ KmtestHandle ; 
 int /*<<< orphan*/  KmtestServiceHandle ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ ResultBuffer ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  SERVICE_DESCRIPTION ; 
 int /*<<< orphan*/  SERVICE_NAME ; 
 int /*<<< orphan*/  SERVICE_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 

int
FUNC18(
    int ArgCount,
    char **Arguments)
{
    INT Status = EXIT_SUCCESS;
    DWORD Error = ERROR_SUCCESS;
    PCSTR AppName = "kmtest.exe";
    PCSTR TestName = NULL;
    KMT_OPERATION Operation = KMT_DO_NOTHING;
    BOOLEAN ShowHidden = FALSE;

    Error = FUNC8();
    if (Error)
        goto cleanup;

    if (ArgCount >= 1)
        AppName = Arguments[0];

    if (ArgCount <= 1)
    {
        FUNC17("Usage: %s <test_name>                 - run the specified test (creates/starts the driver(s) as appropriate)\n", AppName);
        FUNC17("       %s --list                      - list available tests\n", AppName);
        FUNC17("       %s --list-all                  - list available tests, including hidden\n", AppName);
        FUNC17("       %s <create|delete|start|stop>  - manage the kmtest driver\n\n", AppName);
        Operation = KMT_LIST_TESTS;
    }
    else
    {
        TestName = Arguments[1];
        if (!FUNC16(TestName, "create"))
            Error = FUNC4(SERVICE_NAME, SERVICE_PATH, SERVICE_DESCRIPTION, &KmtestServiceHandle);
        else if (!FUNC16(TestName, "delete"))
            Error = FUNC5(SERVICE_NAME, &KmtestServiceHandle);
        else if (!FUNC16(TestName, "start"))
            Error = FUNC9(SERVICE_NAME, &KmtestServiceHandle);
        else if (!FUNC16(TestName, "stop"))
            Error = FUNC10(SERVICE_NAME, &KmtestServiceHandle);

        else if (!FUNC16(TestName, "--list"))
            Operation = KMT_LIST_TESTS;
        else if (!FUNC16(TestName, "--list-all"))
            Operation = KMT_LIST_ALL_TESTS;
        else
            Operation = KMT_RUN_TEST;
    }

    if (Operation)
    {
        Error = FUNC3(SERVICE_NAME, SERVICE_PATH, SERVICE_DESCRIPTION, &KmtestServiceHandle, FALSE);
        if (Error)
            goto cleanup;

        KmtestHandle = FUNC1(KMTEST_DEVICE_PATH, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, 0, NULL);
        if (KmtestHandle == INVALID_HANDLE_VALUE)
            FUNC15(Error, cleanup);

        switch (Operation)
        {
            case KMT_LIST_ALL_TESTS:
                ShowHidden = TRUE;
                /* fall through */
            case KMT_LIST_TESTS:
                Error = FUNC11(ShowHidden);
                break;
            case KMT_RUN_TEST:
                Error = FUNC13(TestName);
                break;
            default:
                FUNC14(FALSE);
        }
    }

cleanup:
    if (KmtestHandle)
        FUNC0(KmtestHandle);

    if (ResultBuffer)
        FUNC6(ResultBuffer);

    FUNC2(&KmtestServiceHandle);

    if (Error)
        FUNC7(TRUE);
    else
        Error = FUNC7(FALSE);

    if (Error)
    {
        FUNC12(Error);

        Status = EXIT_FAILURE;
    }

    return Status;
}