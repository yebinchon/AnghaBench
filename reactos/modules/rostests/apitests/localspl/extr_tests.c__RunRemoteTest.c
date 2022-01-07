
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szBuffer ;
typedef int WIN32_FIND_DATAW ;
typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ dwCurrentState; } ;
typedef TYPE_1__ SERVICE_STATUS ;
typedef int * SC_HANDLE ;
typedef int PWSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int COMMAND_PIPE_NAME ;
 int CloseHandle (scalar_t__) ;
 int CloseServiceHandle (int *) ;
 int ConnectNamedPipe (scalar_t__,int *) ;
 scalar_t__ CreateNamedPipeW (int ,int ,int,int,int,int,int,int *) ;
 int * CreateServiceW (int *,char*,int *,int ,int ,int ,int ,int *,int *,int *,int *,int *,int *) ;
 int * ERROR_PIPE_CONNECTED ;
 int * ERROR_SERVICE_DOES_NOT_EXIST ;
 int EnumPrintersW (int,int *,int,int *,int ,scalar_t__*,scalar_t__*) ;
 int ExitProcess (int ) ;
 scalar_t__ FALSE ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (int *,int *) ;
 int * GetLastError () ;
 int GetModuleFileNameW (int *,int *,int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OUTPUT_PIPE_NAME ;
 int * OpenSCManagerW (int *,int *,int ) ;
 int * OpenServiceW (int *,char*,int ) ;
 int PIPE_ACCESS_INBOUND ;
 int PIPE_ACCESS_OUTBOUND ;
 int PIPE_READMODE_BYTE ;
 int PIPE_READMODE_MESSAGE ;
 int PIPE_TYPE_BYTE ;
 int PIPE_TYPE_MESSAGE ;
 int PIPE_WAIT ;
 int PRINTER_ENUM_LOCAL ;
 int PRINTER_ENUM_NAME ;
 int QueryServiceStatus (int *,TYPE_1__*) ;
 scalar_t__ ReadFile (scalar_t__,char*,int,scalar_t__*,int *) ;
 int SC_MANAGER_ALL_ACCESS ;
 int SERVICE_ALL_ACCESS ;
 int SERVICE_DEMAND_START ;
 int SERVICE_ERROR_IGNORE ;
 char* SERVICE_NAME ;
 int SERVICE_QUERY_STATUS ;
 scalar_t__ SERVICE_RUNNING ;
 int SERVICE_WIN32_OWN_PROCESS ;
 int StartServiceW (int *,int ,int *) ;
 scalar_t__ TRUE ;
 int WriteFile (scalar_t__,char const*,scalar_t__,scalar_t__*,int *) ;
 int fwrite (char*,int,scalar_t__,int ) ;
 int skip (char*,...) ;
 int stdout ;
 scalar_t__ strlen (char const*) ;
 int wcscpy (int ,char*) ;
 int wcsrchr (int *,int) ;

__attribute__((used)) static void
_RunRemoteTest(const char* szTestName)
{
    BOOL bSuccessful = FALSE;
    char szBuffer[1024];
    DWORD cbRead;
    DWORD cbWritten;
    HANDLE hCommandPipe = INVALID_HANDLE_VALUE;
    HANDLE hFind = INVALID_HANDLE_VALUE;
    HANDLE hOutputPipe = INVALID_HANDLE_VALUE;
    PWSTR p;
    SC_HANDLE hSC = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    SERVICE_STATUS ServiceStatus;
    WCHAR wszFilePath[MAX_PATH + 20];
    WIN32_FIND_DATAW fd;



    EnumPrintersW(PRINTER_ENUM_LOCAL | PRINTER_ENUM_NAME, ((void*)0), 1, ((void*)0), 0, &cbRead, &cbWritten);


    if (!GetModuleFileNameW(((void*)0), wszFilePath, MAX_PATH))
    {
        skip("GetModuleFileNameW failed with error %lu!\n", GetLastError());
        goto Cleanup;
    }


    p = wcsrchr(wszFilePath, L'.');
    if (!p)
    {
        skip("File path has no file extension: %S\n", wszFilePath);
        goto Cleanup;
    }

    wcscpy(p, L".dll");


    hFind = FindFirstFileW(wszFilePath, &fd);
    if (hFind == INVALID_HANDLE_VALUE)
    {
        skip("My DLL file \"%S\" does not exist!\n", wszFilePath);
        goto Cleanup;
    }


    wcscpy(p, L".exe service dummy");


    hSC = OpenSCManagerW(((void*)0), ((void*)0), SC_MANAGER_ALL_ACCESS);
    if (!hSC)
    {
        skip("OpenSCManagerW failed with error %lu!\n", GetLastError());
        goto Cleanup;
    }


    hService = OpenServiceW(hSC, L"spooler", SERVICE_QUERY_STATUS);
    if (!hService)
    {
        skip("OpenServiceW failed for the spooler service with error %lu!\n", GetLastError());
        goto Cleanup;
    }

    if (!QueryServiceStatus(hService, &ServiceStatus))
    {
        skip("QueryServiceStatus failed for the spooler service with error %lu!\n", GetLastError());
        goto Cleanup;
    }

    if (ServiceStatus.dwCurrentState != SERVICE_RUNNING)
    {
        skip("Spooler Service is not running!\n");
        goto Cleanup;
    }

    CloseServiceHandle(hService);


    hService = OpenServiceW(hSC, SERVICE_NAME, SERVICE_ALL_ACCESS);
    if (!hService)
    {
        if (GetLastError() == ERROR_SERVICE_DOES_NOT_EXIST)
        {

            hService = CreateServiceW(hSC, SERVICE_NAME, ((void*)0), SERVICE_ALL_ACCESS, SERVICE_WIN32_OWN_PROCESS, SERVICE_DEMAND_START, SERVICE_ERROR_IGNORE, wszFilePath, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
            if (!hService)
            {
                skip("CreateServiceW failed with error %lu!\n", GetLastError());
                goto Cleanup;
            }
        }
        else
        {
            skip("OpenServiceW failed with error %lu!\n", GetLastError());
            goto Cleanup;
        }
    }


    hCommandPipe = CreateNamedPipeW(COMMAND_PIPE_NAME, PIPE_ACCESS_OUTBOUND, PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE | PIPE_WAIT, 1, 1024, 1024, 10000, ((void*)0));
    if (hCommandPipe == INVALID_HANDLE_VALUE)
    {
        skip("CreateNamedPipeW failed for the command pipe with error %lu!\n", GetLastError());
        goto Cleanup;
    }

    hOutputPipe = CreateNamedPipeW(OUTPUT_PIPE_NAME, PIPE_ACCESS_INBOUND, PIPE_TYPE_BYTE | PIPE_READMODE_BYTE | PIPE_WAIT, 1, 1024, 1024, 10000, ((void*)0));
    if (hOutputPipe == INVALID_HANDLE_VALUE)
    {
        skip("CreateNamedPipeW failed for the output pipe with error %lu!\n", GetLastError());
        goto Cleanup;
    }


    if (!StartServiceW(hService, 0, ((void*)0)))
    {
        skip("StartServiceW failed with error %lu!\n", GetLastError());
        goto Cleanup;
    }


    if (!ConnectNamedPipe(hCommandPipe, ((void*)0)) && GetLastError() != ERROR_PIPE_CONNECTED)
    {
        skip("ConnectNamedPipe failed for the command pipe with error %lu!\n", GetLastError());
        goto Cleanup;
    }


    if (!WriteFile(hCommandPipe, szTestName, strlen(szTestName) + sizeof(char), &cbWritten, ((void*)0)))
    {
        skip("WriteFile failed with error %lu!\n", GetLastError());
        goto Cleanup;
    }


    if (!ConnectNamedPipe(hOutputPipe, ((void*)0)))
    {
        skip("ConnectNamedPipe failed for the output pipe with error %lu!\n", GetLastError());
        goto Cleanup;
    }


    while (ReadFile(hOutputPipe, szBuffer, sizeof(szBuffer), &cbRead, ((void*)0)) && cbRead)
        fwrite(szBuffer, sizeof(char), cbRead, stdout);

    bSuccessful = TRUE;

Cleanup:
    if (hCommandPipe != INVALID_HANDLE_VALUE)
        CloseHandle(hCommandPipe);

    if (hOutputPipe != INVALID_HANDLE_VALUE)
        CloseHandle(hOutputPipe);

    if (hFind != INVALID_HANDLE_VALUE)
        FindClose(hFind);

    if (hService)
        CloseServiceHandle(hService);

    if (hSC)
        CloseServiceHandle(hSC);



    if (bSuccessful)
        ExitProcess(0);
}
