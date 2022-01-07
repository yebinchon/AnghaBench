
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HINTERNET ;
typedef int BOOL ;


 int CHECK_NOTIFIED2 (int ,int) ;
 int GetLastError () ;
 int INFINITE ;
 int INTERNET_STATUS_HANDLE_CLOSING ;
 int InternetCloseHandle (int ) ;
 int SET_EXPECT2 (int ,int) ;
 int WaitForSingleObject (int ,int ) ;
 int close_handle_cnt ;
 int complete_event ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void close_async_handle(HINTERNET handle, int handle_cnt)
{
    BOOL res;

    close_handle_cnt = handle_cnt;

    SET_EXPECT2(INTERNET_STATUS_HANDLE_CLOSING, handle_cnt);
    res = InternetCloseHandle(handle);
    ok(res, "InternetCloseHandle failed: %u\n", GetLastError());
    WaitForSingleObject(complete_event, INFINITE);
    CHECK_NOTIFIED2(INTERNET_STATUS_HANDLE_CLOSING, handle_cnt);
}
