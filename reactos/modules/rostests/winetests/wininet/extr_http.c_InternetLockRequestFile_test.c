
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int request; } ;
typedef TYPE_1__ test_request_t ;
typedef int file_name ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int DeleteFileA (char*) ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INTERNET_ITEM_NOT_FOUND ;
 int ERROR_SHARING_VIOLATION ;
 int GetLastError () ;
 int HttpSendRequestA (int ,int *,int ,int *,int ) ;
 int INTERNET_DEFAULT_HTTP_PORT ;
 int INTERNET_OPTION_DATAFILE_NAME ;
 int InternetCloseHandle (int ) ;
 int InternetLockRequestFile (int ,int **) ;
 int InternetQueryOptionA (int ,int ,char*,int*) ;
 int InternetUnlockRequestFile (int *) ;
 int MAX_PATH ;
 int ok (int,char*,...) ;
 int open_simple_request (TYPE_1__*,char*,int ,int *,char*) ;

__attribute__((used)) static void InternetLockRequestFile_test(void)
{
    char file_name[MAX_PATH];
    test_request_t req;
    HANDLE lock, lock2;
    DWORD size;
    BOOL ret;

    open_simple_request(&req, "test.winehq.org", INTERNET_DEFAULT_HTTP_PORT, ((void*)0), "/tests/hello.html");

    size = sizeof(file_name);
    ret = InternetQueryOptionA(req.request, INTERNET_OPTION_DATAFILE_NAME, file_name, &size);
    ok(!ret, "InternetQueryOptionA(INTERNET_OPTION_DATAFILE_NAME) succeeded\n");
    ok(GetLastError() == ERROR_INTERNET_ITEM_NOT_FOUND, "GetLastError()=%u\n", GetLastError());
    ok(!size, "size = %d\n", size);

    lock = ((void*)0);
    ret = InternetLockRequestFile(req.request, &lock);
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND, "InternetLockRequestFile returned: %x(%u)\n", ret, GetLastError());

    ret = HttpSendRequestA(req.request, ((void*)0), 0, ((void*)0), 0);
    ok(ret, "HttpSendRequest failed: %u\n", GetLastError());

    size = sizeof(file_name);
    ret = InternetQueryOptionA(req.request, INTERNET_OPTION_DATAFILE_NAME, file_name, &size);
    ok(ret, "InternetQueryOptionA(INTERNET_OPTION_DATAFILE_NAME) failed: %u\n", GetLastError());

    ret = InternetLockRequestFile(req.request, &lock);
    ok(ret, "InternetLockRequestFile returned: %x(%u)\n", ret, GetLastError());
    ok(lock != ((void*)0), "lock == NULL\n");

    ret = InternetLockRequestFile(req.request, &lock2);
    ok(ret, "InternetLockRequestFile returned: %x(%u)\n", ret, GetLastError());
    ok(lock == lock2, "lock != lock2\n");

    ret = InternetUnlockRequestFile(lock2);
    ok(ret, "InternetUnlockRequestFile failed: %u\n", GetLastError());

    ret = DeleteFileA(file_name);
    ok(!ret && GetLastError() == ERROR_SHARING_VIOLATION, "Deleting file returned %x(%u)\n", ret, GetLastError());

    ok(InternetCloseHandle(req.request), "Close request handle failed\n");

    ret = DeleteFileA(file_name);
    ok(!ret && GetLastError() == ERROR_SHARING_VIOLATION, "Deleting file returned %x(%u)\n", ret, GetLastError());

    ret = InternetUnlockRequestFile(lock);
    ok(ret, "InternetUnlockRequestFile failed: %u\n", GetLastError());

    ret = DeleteFileA(file_name);
    ok(ret, "Deleting file returned %x(%u)\n", ret, GetLastError());
}
