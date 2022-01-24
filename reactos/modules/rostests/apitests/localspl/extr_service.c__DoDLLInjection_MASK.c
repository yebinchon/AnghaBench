#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pe ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int dwSize; int /*<<< orphan*/  th32ProcessID; int /*<<< orphan*/  szExeFile; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_1__ PROCESSENTRY32W ;
typedef  int /*<<< orphan*/  LPTHREAD_START_ROUTINE ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int MEM_COMMIT ; 
 int MEM_RESERVE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  PROCESS_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC10 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  TH32CS_SNAPPROCESS ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC18()
{
    DWORD cbDLLPath;
    HANDLE hProcess;
    HANDLE hSnapshot;
    HANDLE hThread;
    PROCESSENTRY32W pe;
    PVOID pLoadLibraryAddress;
    PVOID pLoadLibraryArgument;
    PWSTR p;
    WCHAR wszFilePath[MAX_PATH];

    // Get the full path to our EXE file.
    if (!FUNC5(NULL, wszFilePath, FUNC13(wszFilePath)))
    {
        FUNC3("GetModuleFileNameW failed with error %lu!\n", FUNC4());
        return;
    }

    // Replace the extension.
    p = FUNC17(wszFilePath, L'.');
    if (!p)
    {
        FUNC3("File path has no file extension: %S\n", wszFilePath);
        return;
    }

    FUNC14(p, L".dll");
    cbDLLPath = (FUNC16(wszFilePath) + 1) * sizeof(WCHAR);

    // Create a snapshot of the currently running processes.
    hSnapshot = FUNC2(TH32CS_SNAPPROCESS, 0);
    if (hSnapshot == INVALID_HANDLE_VALUE)
    {
        FUNC3("CreateToolhelp32Snapshot failed with error %lu!\n", FUNC4());
        return;
    }

    // Enumerate through all running processes.
    pe.dwSize = sizeof(pe);
    if (!FUNC9(hSnapshot, &pe))
    {
        FUNC3("Process32FirstW failed with error %lu!\n", FUNC4());
        return;
    }

    do
    {
        // Check if this is the spooler server process.
        if (FUNC15(pe.szExeFile, L"spoolsv.exe") != 0)
            continue;

        // Open a handle to the process.
        hProcess = FUNC8(PROCESS_ALL_ACCESS, FALSE, pe.th32ProcessID);
        if (!hProcess)
        {
            FUNC3("OpenProcess failed with error %lu!\n", FUNC4());
            return;
        }

        // Get the address of LoadLibraryW.
        pLoadLibraryAddress = (PVOID)FUNC7(FUNC6(L"kernel32.dll"), "LoadLibraryW");
        if (!pLoadLibraryAddress)
        {
            FUNC3("GetProcAddress failed with error %lu!\n", FUNC4());
            return;
        }

        // Allocate memory for the DLL path in the spooler process.
        pLoadLibraryArgument = FUNC11(hProcess, NULL, cbDLLPath, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
        if (!pLoadLibraryArgument)
        {
            FUNC3("VirtualAllocEx failed with error %lu!\n", FUNC4());
            return;
        }

        // Write the DLL path to the process memory.
        if (!FUNC12(hProcess, pLoadLibraryArgument, wszFilePath, cbDLLPath, NULL))
        {
            FUNC3("WriteProcessMemory failed with error %lu!\n", FUNC4());
            return;
        }

        // Create a new thread in the spooler process that calls LoadLibraryW as the start routine with our DLL as the argument.
        // This effectively injects our DLL into the spooler process and we can inspect localspl.dll there just like the spooler.
        hThread = FUNC1(hProcess, NULL, 0, (LPTHREAD_START_ROUTINE)pLoadLibraryAddress, pLoadLibraryArgument, 0, NULL);
        if (!hThread)
        {
            FUNC3("CreateRemoteThread failed with error %lu!\n", FUNC4());
            return;
        }

        FUNC0(hThread);
        break;
    }
    while (FUNC10(hSnapshot, &pe));
}