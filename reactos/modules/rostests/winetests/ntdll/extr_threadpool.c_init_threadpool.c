
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int GetModuleHandleA (char*) ;
 int NTDLL_GET_PROC (int ) ;
 int TRUE ;
 int TpAllocCleanupGroup ;
 int TpAllocPool ;
 int TpAllocTimer ;
 int TpAllocWait ;
 int TpAllocWork ;
 int TpCallbackMayRunLong ;
 int TpCallbackReleaseSemaphoreOnCompletion ;
 int TpDisassociateCallback ;
 int TpIsTimerSet ;
 int TpPostWork ;
 int TpReleaseCleanupGroup ;
 int TpReleaseCleanupGroupMembers ;
 int TpReleasePool ;
 int TpReleaseTimer ;
 int TpReleaseWait ;
 int TpReleaseWork ;
 int TpSetPoolMaxThreads ;
 int TpSetTimer ;
 int TpSetWait ;
 int TpSimpleTryPost ;
 int TpWaitForTimer ;
 int TpWaitForWait ;
 int TpWaitForWork ;
 int hntdll ;
 int pTpAllocPool ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL init_threadpool(void)
{
    hntdll = GetModuleHandleA("ntdll");
    if (!hntdll)
    {
        win_skip("Could not load ntdll\n");
        return FALSE;
    }

    NTDLL_GET_PROC(TpAllocCleanupGroup);
    NTDLL_GET_PROC(TpAllocPool);
    NTDLL_GET_PROC(TpAllocTimer);
    NTDLL_GET_PROC(TpAllocWait);
    NTDLL_GET_PROC(TpAllocWork);
    NTDLL_GET_PROC(TpCallbackMayRunLong);
    NTDLL_GET_PROC(TpCallbackReleaseSemaphoreOnCompletion);
    NTDLL_GET_PROC(TpDisassociateCallback);
    NTDLL_GET_PROC(TpIsTimerSet);
    NTDLL_GET_PROC(TpPostWork);
    NTDLL_GET_PROC(TpReleaseCleanupGroup);
    NTDLL_GET_PROC(TpReleaseCleanupGroupMembers);
    NTDLL_GET_PROC(TpReleasePool);
    NTDLL_GET_PROC(TpReleaseTimer);
    NTDLL_GET_PROC(TpReleaseWait);
    NTDLL_GET_PROC(TpReleaseWork);
    NTDLL_GET_PROC(TpSetPoolMaxThreads);
    NTDLL_GET_PROC(TpSetTimer);
    NTDLL_GET_PROC(TpSetWait);
    NTDLL_GET_PROC(TpSimpleTryPost);
    NTDLL_GET_PROC(TpWaitForTimer);
    NTDLL_GET_PROC(TpWaitForWait);
    NTDLL_GET_PROC(TpWaitForWork);

    if (!pTpAllocPool)
    {
        win_skip("Threadpool functions not supported, skipping tests\n");
        return FALSE;
    }

    return TRUE;
}
