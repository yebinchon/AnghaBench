
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
struct TYPE_7__ {TYPE_3__* Sid; } ;
struct TYPE_9__ {TYPE_1__ User; } ;
typedef int REGSAM ;
typedef int PVOID ;
typedef TYPE_3__* PTOKEN_USER ;
typedef int PHKEY ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef int Buffer ;
typedef int BYTE ;
typedef int BOOL ;


 int CloseHandle (int *) ;
 int DPRINT1 (char*,int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetLastError () ;
 int GetTokenInformation (int *,int ,int ,int,int *) ;
 int HKEY_USERS ;
 int NT_SUCCESS (int ) ;
 int * OpenProcess (int,int,int ) ;
 int OpenProcessToken (int *,int ,int **) ;
 int PROCESS_QUERY_INFORMATION ;
 int PROCESS_VM_READ ;
 int READ_CONTROL ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int ,int ) ;
 int RtlConvertSidToUnicodeString (TYPE_2__*,TYPE_3__*,int) ;
 int RtlFreeUnicodeString (TYPE_2__*) ;
 int TOKEN_QUERY ;
 int TRUE ;
 int TokenUser ;

__attribute__((used)) static BOOL
OpenUserRegistryPathPerProcessId(DWORD ProcessId,
                                 PHKEY hResult,
                                 REGSAM samDesired)
{
    BOOL bRet = TRUE;
    HANDLE hProcessToken = ((void*)0);
    HANDLE hProcess;
    BYTE Buffer[256];
    DWORD Length = 0;
    UNICODE_STRING SidName;
    PTOKEN_USER TokUser;

    hProcess = OpenProcess(PROCESS_QUERY_INFORMATION | PROCESS_VM_READ | READ_CONTROL, FALSE, ProcessId);
    if (!hProcess)
    {
        DPRINT1("Error: OpenProcess failed(0x%x)\n", GetLastError());
        return FALSE;
    }

    if (!OpenProcessToken(hProcess, TOKEN_QUERY, &hProcessToken))
    {
        DPRINT1("Error: OpenProcessToken failed(0x%x)\n", GetLastError());
        CloseHandle(hProcess);
        return FALSE;
    }

    if (!GetTokenInformation(hProcessToken, TokenUser, (PVOID)Buffer, sizeof(Buffer), &Length))
    {
        DPRINT1("Error: GetTokenInformation failed(0x%x)\n",GetLastError());
        CloseHandle(hProcessToken);
        CloseHandle(hProcess);
        return FALSE;
    }

    TokUser = ((PTOKEN_USER)Buffer)->User.Sid;
    if (!NT_SUCCESS(RtlConvertSidToUnicodeString(&SidName, TokUser, TRUE)))
    {
        DPRINT1("Error: RtlConvertSidToUnicodeString failed(0x%x)\n", GetLastError());
        CloseHandle(hProcessToken);
        CloseHandle(hProcess);
        return FALSE;
    }




    bRet = (RegOpenKeyExW(HKEY_USERS,
                          SidName.Buffer,
                          0,
                          samDesired,
                          hResult) == ERROR_SUCCESS);

    RtlFreeUnicodeString(&SidName);

    CloseHandle(hProcessToken);
    CloseHandle(hProcess);

    return bRet;
}
