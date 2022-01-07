
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int * HANDLE ;
typedef int DWORD ;


 int CREATE_NEW ;
 int CloseEventLog (int *) ;
 int CloseHandle (int *) ;
 int * CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileA (char const*) ;
 scalar_t__ ERROR_EVENTLOG_FILE_CORRUPT ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 int GENERIC_WRITE ;
 scalar_t__ GetFileAttributesA (char const*) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int * OpenBackupEventLogA (char*,char const*) ;
 scalar_t__ RPC_S_INVALID_NET_ADDR ;
 scalar_t__ RPC_S_SERVER_UNAVAILABLE ;
 int SetLastError (int) ;
 int WriteFile (int *,char const*,int,int *,int *) ;
 scalar_t__ create_backup (char const*) ;
 int ok (int,char*,...) ;
 int skip (char*) ;

__attribute__((used)) static void test_openbackup(void)
{
    HANDLE handle, handle2, file;
    DWORD written;
    const char backup[] = "backup.evt";
    const char text[] = "Just some text";

    SetLastError(0xdeadbeef);
    handle = OpenBackupEventLogA(((void*)0), ((void*)0));
    ok(handle == ((void*)0), "Didn't expect a handle\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    handle = OpenBackupEventLogA(((void*)0), "idontexist.evt");
    ok(handle == ((void*)0), "Didn't expect a handle\n");
    ok(GetLastError() == ERROR_FILE_NOT_FOUND, "Expected ERROR_FILE_NOT_FOUND, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    handle = OpenBackupEventLogA("IDontExist", ((void*)0));
    ok(handle == ((void*)0), "Didn't expect a handle\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    handle = OpenBackupEventLogA("IDontExist", "idontexist.evt");
    ok(handle == ((void*)0), "Didn't expect a handle\n");
    ok(GetLastError() == RPC_S_SERVER_UNAVAILABLE ||
       GetLastError() == RPC_S_INVALID_NET_ADDR,
       "Expected RPC_S_SERVER_UNAVAILABLE, got %d\n", GetLastError());


    if (create_backup(backup))
    {

        if (GetFileAttributesA(backup) == INVALID_FILE_ATTRIBUTES)
        {
            skip("We don't have a backup eventlog to work with\n");
            return;
        }

        SetLastError(0xdeadbeef);
        handle = OpenBackupEventLogA("IDontExist", backup);
        ok(handle == ((void*)0), "Didn't expect a handle\n");
        ok(GetLastError() == RPC_S_SERVER_UNAVAILABLE ||
           GetLastError() == RPC_S_INVALID_NET_ADDR,
           "Expected RPC_S_SERVER_UNAVAILABLE, got %d\n", GetLastError());


        handle = OpenBackupEventLogA("", backup);
        ok(handle != ((void*)0), "Expected a handle\n");
        CloseEventLog(handle);

        handle = OpenBackupEventLogA(((void*)0), backup);
        ok(handle != ((void*)0), "Expected a handle\n");


        handle2 = OpenBackupEventLogA(((void*)0), backup);
        ok(handle2 != ((void*)0), "Expected a handle\n");
        ok(handle2 != handle, "Didn't expect the same handle\n");
        CloseEventLog(handle2);

        CloseEventLog(handle);
        DeleteFileA(backup);
    }


    file = CreateFileA(backup, GENERIC_WRITE, 0, ((void*)0), CREATE_NEW, 0, ((void*)0));
    CloseHandle(file);
    SetLastError(0xdeadbeef);
    handle = OpenBackupEventLogA(((void*)0), backup);
    ok(handle == ((void*)0), "Didn't expect a handle\n");
    ok(GetLastError() == ERROR_NOT_ENOUGH_MEMORY ||
       GetLastError() == ERROR_EVENTLOG_FILE_CORRUPT,
       "Expected ERROR_NOT_ENOUGH_MEMORY, got %d\n", GetLastError());
    CloseEventLog(handle);
    DeleteFileA(backup);

    file = CreateFileA(backup, GENERIC_WRITE, 0, ((void*)0), CREATE_NEW, 0, ((void*)0));
    WriteFile(file, text, sizeof(text), &written, ((void*)0));
    CloseHandle(file);
    SetLastError(0xdeadbeef);
    handle = OpenBackupEventLogA(((void*)0), backup);
    ok(handle == ((void*)0), "Didn't expect a handle\n");
    ok(GetLastError() == ERROR_EVENTLOG_FILE_CORRUPT, "Expected ERROR_EVENTLOG_FILE_CORRUPT, got %d\n", GetLastError());
    CloseEventLog(handle);
    DeleteFileA(backup);
}
