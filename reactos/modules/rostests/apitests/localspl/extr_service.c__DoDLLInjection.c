
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pe ;
typedef int WCHAR ;
struct TYPE_4__ {int dwSize; int th32ProcessID; int szExeFile; } ;
typedef int PWSTR ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__ PROCESSENTRY32W ;
typedef int LPTHREAD_START_ROUTINE ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateRemoteThread (scalar_t__,int *,int ,int ,scalar_t__,int ,int *) ;
 scalar_t__ CreateToolhelp32Snapshot (int ,int ) ;
 int DPRINT (char*,int *) ;
 int FALSE ;
 int * GetLastError () ;
 int GetModuleFileNameW (int *,int *,int ) ;
 int GetModuleHandleW (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MEM_COMMIT ;
 int MEM_RESERVE ;
 scalar_t__ OpenProcess (int ,int ,int ) ;
 int PAGE_READWRITE ;
 int PROCESS_ALL_ACCESS ;
 int Process32FirstW (scalar_t__,TYPE_1__*) ;
 scalar_t__ Process32NextW (scalar_t__,TYPE_1__*) ;
 int TH32CS_SNAPPROCESS ;
 scalar_t__ VirtualAllocEx (scalar_t__,int *,int,int,int ) ;
 int WriteProcessMemory (scalar_t__,scalar_t__,int *,int,int *) ;
 int _countof (int *) ;
 int wcscpy (int ,char*) ;
 scalar_t__ wcsicmp (int ,char*) ;
 int wcslen (int *) ;
 int wcsrchr (int *,int) ;

__attribute__((used)) static void
_DoDLLInjection()
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


    if (!GetModuleFileNameW(((void*)0), wszFilePath, _countof(wszFilePath)))
    {
        DPRINT("GetModuleFileNameW failed with error %lu!\n", GetLastError());
        return;
    }


    p = wcsrchr(wszFilePath, L'.');
    if (!p)
    {
        DPRINT("File path has no file extension: %S\n", wszFilePath);
        return;
    }

    wcscpy(p, L".dll");
    cbDLLPath = (wcslen(wszFilePath) + 1) * sizeof(WCHAR);


    hSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    if (hSnapshot == INVALID_HANDLE_VALUE)
    {
        DPRINT("CreateToolhelp32Snapshot failed with error %lu!\n", GetLastError());
        return;
    }


    pe.dwSize = sizeof(pe);
    if (!Process32FirstW(hSnapshot, &pe))
    {
        DPRINT("Process32FirstW failed with error %lu!\n", GetLastError());
        return;
    }

    do
    {

        if (wcsicmp(pe.szExeFile, L"spoolsv.exe") != 0)
            continue;


        hProcess = OpenProcess(PROCESS_ALL_ACCESS, FALSE, pe.th32ProcessID);
        if (!hProcess)
        {
            DPRINT("OpenProcess failed with error %lu!\n", GetLastError());
            return;
        }


        pLoadLibraryAddress = (PVOID)GetProcAddress(GetModuleHandleW(L"kernel32.dll"), "LoadLibraryW");
        if (!pLoadLibraryAddress)
        {
            DPRINT("GetProcAddress failed with error %lu!\n", GetLastError());
            return;
        }


        pLoadLibraryArgument = VirtualAllocEx(hProcess, ((void*)0), cbDLLPath, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
        if (!pLoadLibraryArgument)
        {
            DPRINT("VirtualAllocEx failed with error %lu!\n", GetLastError());
            return;
        }


        if (!WriteProcessMemory(hProcess, pLoadLibraryArgument, wszFilePath, cbDLLPath, ((void*)0)))
        {
            DPRINT("WriteProcessMemory failed with error %lu!\n", GetLastError());
            return;
        }



        hThread = CreateRemoteThread(hProcess, ((void*)0), 0, (LPTHREAD_START_ROUTINE)pLoadLibraryAddress, pLoadLibraryArgument, 0, ((void*)0));
        if (!hThread)
        {
            DPRINT("CreateRemoteThread failed with error %lu!\n", GetLastError());
            return;
        }

        CloseHandle(hThread);
        break;
    }
    while (Process32NextW(hSnapshot, &pe));
}
