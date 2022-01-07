
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCSTR ;
typedef int KMT_OPERATION ;
typedef int INT ;
typedef scalar_t__ DWORD ;
typedef int BOOLEAN ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int,int ,int *,int ,int ,int *) ;
 scalar_t__ ERROR_SUCCESS ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FALSE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int KMTEST_DEVICE_PATH ;
 int KMT_DO_NOTHING ;



 int KmtCloseService (int *) ;
 scalar_t__ KmtCreateAndStartService (int ,int ,int ,int *,int ) ;
 scalar_t__ KmtCreateService (int ,int ,int ,int *) ;
 scalar_t__ KmtDeleteService (int ,int *) ;
 int KmtFreeResultBuffer (scalar_t__) ;
 scalar_t__ KmtServiceCleanup (int ) ;
 scalar_t__ KmtServiceInit () ;
 scalar_t__ KmtStartService (int ,int *) ;
 scalar_t__ KmtStopService (int ,int *) ;
 scalar_t__ KmtestHandle ;
 int KmtestServiceHandle ;
 scalar_t__ ListTests (int ) ;
 int OPEN_EXISTING ;
 int OutputError (scalar_t__) ;
 scalar_t__ ResultBuffer ;
 scalar_t__ RunTest (char*) ;
 int SERVICE_DESCRIPTION ;
 int SERVICE_NAME ;
 int SERVICE_PATH ;
 int TRUE ;
 int assert (int ) ;
 int cleanup ;
 int error_goto (scalar_t__,int ) ;
 int lstrcmpA (char*,char*) ;
 int printf (char*,char*) ;

int
main(
    int ArgCount,
    char **Arguments)
{
    INT Status = EXIT_SUCCESS;
    DWORD Error = ERROR_SUCCESS;
    PCSTR AppName = "kmtest.exe";
    PCSTR TestName = ((void*)0);
    KMT_OPERATION Operation = KMT_DO_NOTHING;
    BOOLEAN ShowHidden = FALSE;

    Error = KmtServiceInit();
    if (Error)
        goto cleanup;

    if (ArgCount >= 1)
        AppName = Arguments[0];

    if (ArgCount <= 1)
    {
        printf("Usage: %s <test_name>                 - run the specified test (creates/starts the driver(s) as appropriate)\n", AppName);
        printf("       %s --list                      - list available tests\n", AppName);
        printf("       %s --list-all                  - list available tests, including hidden\n", AppName);
        printf("       %s <create|delete|start|stop>  - manage the kmtest driver\n\n", AppName);
        Operation = 129;
    }
    else
    {
        TestName = Arguments[1];
        if (!lstrcmpA(TestName, "create"))
            Error = KmtCreateService(SERVICE_NAME, SERVICE_PATH, SERVICE_DESCRIPTION, &KmtestServiceHandle);
        else if (!lstrcmpA(TestName, "delete"))
            Error = KmtDeleteService(SERVICE_NAME, &KmtestServiceHandle);
        else if (!lstrcmpA(TestName, "start"))
            Error = KmtStartService(SERVICE_NAME, &KmtestServiceHandle);
        else if (!lstrcmpA(TestName, "stop"))
            Error = KmtStopService(SERVICE_NAME, &KmtestServiceHandle);

        else if (!lstrcmpA(TestName, "--list"))
            Operation = 129;
        else if (!lstrcmpA(TestName, "--list-all"))
            Operation = 130;
        else
            Operation = 128;
    }

    if (Operation)
    {
        Error = KmtCreateAndStartService(SERVICE_NAME, SERVICE_PATH, SERVICE_DESCRIPTION, &KmtestServiceHandle, FALSE);
        if (Error)
            goto cleanup;

        KmtestHandle = CreateFile(KMTEST_DEVICE_PATH, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
        if (KmtestHandle == INVALID_HANDLE_VALUE)
            error_goto(Error, cleanup);

        switch (Operation)
        {
            case 130:
                ShowHidden = TRUE;

            case 129:
                Error = ListTests(ShowHidden);
                break;
            case 128:
                Error = RunTest(TestName);
                break;
            default:
                assert(FALSE);
        }
    }

cleanup:
    if (KmtestHandle)
        CloseHandle(KmtestHandle);

    if (ResultBuffer)
        KmtFreeResultBuffer(ResultBuffer);

    KmtCloseService(&KmtestServiceHandle);

    if (Error)
        KmtServiceCleanup(TRUE);
    else
        Error = KmtServiceCleanup(FALSE);

    if (Error)
    {
        OutputError(Error);

        Status = EXIT_FAILURE;
    }

    return Status;
}
