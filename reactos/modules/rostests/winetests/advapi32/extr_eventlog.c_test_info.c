
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_3__ {int dwFull; } ;
typedef int * HANDLE ;
typedef TYPE_1__ EVENTLOG_FULL_INFORMATION ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CloseEventLog (int *) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_INVALID_LEVEL ;
 int EVENTLOG_FULL_INFO ;
 int GetLastError () ;
 int * OpenEventLogA (int *,char*) ;
 scalar_t__ RPC_X_NULL_REF_POINTER ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 int pGetEventLogInformation (int *,int,TYPE_1__*,int,int*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_info(void)
{
    HANDLE handle;
    BOOL ret;
    DWORD needed;
    BYTE buffer[2 * sizeof(EVENTLOG_FULL_INFORMATION)];
    EVENTLOG_FULL_INFORMATION *efi = (void *)buffer;

    if (!pGetEventLogInformation)
    {

        win_skip("GetEventLogInformation is not available\n");
        return;
    }
    SetLastError(0xdeadbeef);
    ret = pGetEventLogInformation(((void*)0), 1, ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_LEVEL, "Expected ERROR_INVALID_LEVEL, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = pGetEventLogInformation(((void*)0), EVENTLOG_FULL_INFO, ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "Expected ERROR_INVALID_HANDLE, got %d\n", GetLastError());

    handle = OpenEventLogA(((void*)0), "Application");

    SetLastError(0xdeadbeef);
    ret = pGetEventLogInformation(handle, EVENTLOG_FULL_INFO, ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == RPC_X_NULL_REF_POINTER, "Expected RPC_X_NULL_REF_POINTER, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = pGetEventLogInformation(handle, EVENTLOG_FULL_INFO, ((void*)0), 0, &needed);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == RPC_X_NULL_REF_POINTER, "Expected RPC_X_NULL_REF_POINTER, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = pGetEventLogInformation(handle, EVENTLOG_FULL_INFO, efi, 0, ((void*)0));
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == RPC_X_NULL_REF_POINTER, "Expected RPC_X_NULL_REF_POINTER, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    needed = 0xdeadbeef;
    efi->dwFull = 0xdeadbeef;
    ret = pGetEventLogInformation(handle, EVENTLOG_FULL_INFO, efi, 0, &needed);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());
    ok(needed == sizeof(EVENTLOG_FULL_INFORMATION), "Expected sizeof(EVENTLOG_FULL_INFORMATION), got %d\n", needed);
    ok(efi->dwFull == 0xdeadbeef, "Expected no change to the dwFull member\n");


    efi->dwFull = 0xdeadbeef;
    needed = sizeof(buffer);
    ret = pGetEventLogInformation(handle, EVENTLOG_FULL_INFO, efi, needed, &needed);
    ok(ret, "Expected success\n");
    ok(needed == sizeof(EVENTLOG_FULL_INFORMATION), "Expected sizeof(EVENTLOG_FULL_INFORMATION), got %d\n", needed);
    ok(efi->dwFull == 0 || efi->dwFull == 1, "Expected 0 (not full) or 1 (full), got %d\n", efi->dwFull);

    CloseEventLog(handle);
}
