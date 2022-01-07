
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int DeleteCriticalSection (int *) ;
 int ERROR_INVALID_HANDLE ;
 int GetLastError () ;
 int SetLastError (int) ;
 int UnhookWindowsHookEx (int ) ;
 int hCBT_hook ;
 scalar_t__ hEvent_hook ;
 int ok (int,char*,...) ;
 int pUnhookWinEvent (scalar_t__) ;
 int sequence_cs ;

__attribute__((used)) static void cleanup_tests()
{
    BOOL ret;
    UnhookWindowsHookEx(hCBT_hook);
    if (pUnhookWinEvent && hEvent_hook)
    {
        ret = pUnhookWinEvent(hEvent_hook);
        ok( ret, "UnhookWinEvent error %d\n", GetLastError());
        SetLastError(0xdeadbeef);
        ok(!pUnhookWinEvent(hEvent_hook), "UnhookWinEvent succeeded\n");
        ok(GetLastError() == ERROR_INVALID_HANDLE ||
           GetLastError() == 0xdeadbeef,
           "unexpected error %d\n", GetLastError());
    }
    DeleteCriticalSection( &sequence_cs );

}
