
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;
typedef int DWORD ;


 int DispatchMessageA (int *) ;
 int FALSE ;
 int GetTickCount () ;
 scalar_t__ MsgWaitForMultipleObjects (int ,int *,int ,int ,int ) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (int *,int ,int ,int ,int ) ;
 int QS_ALLEVENTS ;
 scalar_t__ WAIT_TIMEOUT ;
 int min (int,int) ;

__attribute__((used)) static void flush_events(int waitTime)
{
    MSG msg;
    int diff = waitTime;
    DWORD time = GetTickCount() + waitTime;

    while (diff > 0)
    {
        if (MsgWaitForMultipleObjects( 0, ((void*)0), FALSE, min(100,diff), QS_ALLEVENTS) == WAIT_TIMEOUT) break;
        while (PeekMessageA( &msg, 0, 0, 0, PM_REMOVE )) DispatchMessageA( &msg );
        diff = time - GetTickCount();
    }
}
