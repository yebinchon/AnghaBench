#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szBuffer ;
typedef  int /*<<< orphan*/  WIN32_FIND_DATAW ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__ dwCurrentState; } ;
typedef  TYPE_1__ SERVICE_STATUS ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_PIPE_NAME ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ERROR_PIPE_CONNECTED ; 
 int /*<<< orphan*/ * ERROR_SERVICE_DOES_NOT_EXIST ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  OUTPUT_PIPE_NAME ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIPE_ACCESS_INBOUND ; 
 int /*<<< orphan*/  PIPE_ACCESS_OUTBOUND ; 
 int PIPE_READMODE_BYTE ; 
 int PIPE_READMODE_MESSAGE ; 
 int PIPE_TYPE_BYTE ; 
 int PIPE_TYPE_MESSAGE ; 
 int PIPE_WAIT ; 
 int PRINTER_ENUM_LOCAL ; 
 int PRINTER_ENUM_NAME ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC14 (scalar_t__,char*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SC_MANAGER_ALL_ACCESS ; 
 int /*<<< orphan*/  SERVICE_ALL_ACCESS ; 
 int /*<<< orphan*/  SERVICE_DEMAND_START ; 
 int /*<<< orphan*/  SERVICE_ERROR_IGNORE ; 
 char* SERVICE_NAME ; 
 int /*<<< orphan*/  SERVICE_QUERY_STATUS ; 
 scalar_t__ SERVICE_RUNNING ; 
 int /*<<< orphan*/  SERVICE_WIN32_OWN_PROCESS ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char const*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC22(const char* szTestName)
{
    BOOL bSuccessful = FALSE;
    char szBuffer[1024];
    DWORD cbRead;
    DWORD cbWritten;
    HANDLE hCommandPipe = INVALID_HANDLE_VALUE;
    HANDLE hFind = INVALID_HANDLE_VALUE;
    HANDLE hOutputPipe = INVALID_HANDLE_VALUE;
    PWSTR p;
    SC_HANDLE hSC = NULL;
    SC_HANDLE hService = NULL;
    SERVICE_STATUS ServiceStatus;
    WCHAR wszFilePath[MAX_PATH + 20];
    WIN32_FIND_DATAW fd;

    // Do a dummy EnumPrintersW call.
    // This guarantees that the Spooler Service has actually loaded localspl.dll, which is a requirement for our injected DLL to work properly.
    FUNC5(PRINTER_ENUM_LOCAL | PRINTER_ENUM_NAME, NULL, 1, NULL, 0, &cbRead, &cbWritten);

    // Get the full path to our EXE file.
    if (!FUNC10(NULL, wszFilePath, MAX_PATH))
    {
        FUNC18("GetModuleFileNameW failed with error %lu!\n", FUNC9());
        goto Cleanup;
    }

    // Replace the extension.
    p = FUNC21(wszFilePath, L'.');
    if (!p)
    {
        FUNC18("File path has no file extension: %S\n", wszFilePath);
        goto Cleanup;
    }

    FUNC20(p, L".dll");

    // Check if the corresponding DLL file exists.
    hFind = FUNC8(wszFilePath, &fd);
    if (hFind == INVALID_HANDLE_VALUE)
    {
        FUNC18("My DLL file \"%S\" does not exist!\n", wszFilePath);
        goto Cleanup;
    }

    // Change the extension back to .exe and add the parameters.
    FUNC20(p, L".exe service dummy");

    // Open a handle to the service manager.
    hSC = FUNC11(NULL, NULL, SC_MANAGER_ALL_ACCESS);
    if (!hSC)
    {
        FUNC18("OpenSCManagerW failed with error %lu!\n", FUNC9());
        goto Cleanup;
    }

    // Ensure that the spooler service is running.
    hService = FUNC12(hSC, L"spooler", SERVICE_QUERY_STATUS);
    if (!hService)
    {
        FUNC18("OpenServiceW failed for the spooler service with error %lu!\n", FUNC9());
        goto Cleanup;
    }

    if (!FUNC13(hService, &ServiceStatus))
    {
        FUNC18("QueryServiceStatus failed for the spooler service with error %lu!\n", FUNC9());
        goto Cleanup;
    }

    if (ServiceStatus.dwCurrentState != SERVICE_RUNNING)
    {
        FUNC18("Spooler Service is not running!\n");
        goto Cleanup;
    }

    FUNC1(hService);

    // Try to open the service if we've created it in a previous run.
    hService = FUNC12(hSC, SERVICE_NAME, SERVICE_ALL_ACCESS);
    if (!hService)
    {
        if (FUNC9() == ERROR_SERVICE_DOES_NOT_EXIST)
        {
            // Create the service.
            hService = FUNC4(hSC, SERVICE_NAME, NULL, SERVICE_ALL_ACCESS, SERVICE_WIN32_OWN_PROCESS, SERVICE_DEMAND_START, SERVICE_ERROR_IGNORE, wszFilePath, NULL, NULL, NULL, NULL, NULL);
            if (!hService)
            {
                FUNC18("CreateServiceW failed with error %lu!\n", FUNC9());
                goto Cleanup;
            }
        }
        else
        {
            FUNC18("OpenServiceW failed with error %lu!\n", FUNC9());
            goto Cleanup;
        }
    }

    // Create pipes for the communication with the injected DLL.
    hCommandPipe = FUNC3(COMMAND_PIPE_NAME, PIPE_ACCESS_OUTBOUND, PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE | PIPE_WAIT, 1, 1024, 1024, 10000, NULL);
    if (hCommandPipe == INVALID_HANDLE_VALUE)
    {
        FUNC18("CreateNamedPipeW failed for the command pipe with error %lu!\n", FUNC9());
        goto Cleanup;
    }

    hOutputPipe = FUNC3(OUTPUT_PIPE_NAME, PIPE_ACCESS_INBOUND, PIPE_TYPE_BYTE | PIPE_READMODE_BYTE | PIPE_WAIT, 1, 1024, 1024, 10000, NULL);
    if (hOutputPipe == INVALID_HANDLE_VALUE)
    {
        FUNC18("CreateNamedPipeW failed for the output pipe with error %lu!\n", FUNC9());
        goto Cleanup;
    }

    // Start the service with "service" and a dummy parameter (to distinguish it from a call by rosautotest to localspl_apitest:service)
    if (!FUNC15(hService, 0, NULL))
    {
        FUNC18("StartServiceW failed with error %lu!\n", FUNC9());
        goto Cleanup;
    }

    // Wait till it has injected the DLL and the DLL expects its test name.
    if (!FUNC2(hCommandPipe, NULL) && FUNC9() != ERROR_PIPE_CONNECTED)
    {
        FUNC18("ConnectNamedPipe failed for the command pipe with error %lu!\n", FUNC9());
        goto Cleanup;
    }

    // Send the test name.
    if (!FUNC16(hCommandPipe, szTestName, FUNC19(szTestName) + sizeof(char), &cbWritten, NULL))
    {
        FUNC18("WriteFile failed with error %lu!\n", FUNC9());
        goto Cleanup;
    }

    // Now wait for the DLL to connect to the output pipe.
    if (!FUNC2(hOutputPipe, NULL))
    {
        FUNC18("ConnectNamedPipe failed for the output pipe with error %lu!\n", FUNC9());
        goto Cleanup;
    }

    // Get all testing messages from the pipe and output them on stdout.
    while (FUNC14(hOutputPipe, szBuffer, sizeof(szBuffer), &cbRead, NULL) && cbRead)
        FUNC17(szBuffer, sizeof(char), cbRead, stdout);

    bSuccessful = TRUE;

Cleanup:
    if (hCommandPipe != INVALID_HANDLE_VALUE)
        FUNC0(hCommandPipe);

    if (hOutputPipe != INVALID_HANDLE_VALUE)
        FUNC0(hOutputPipe);

    if (hFind != INVALID_HANDLE_VALUE)
        FUNC7(hFind);

    if (hService)
        FUNC1(hService);

    if (hSC)
        FUNC1(hSC);

    // If we successfully received test output through the named pipe, we have also output a summary line already.
    // Prevent the testing framework from outputting another "0 tests executed" line in this case.
    if (bSuccessful)
        FUNC6(0);
}