
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ message; } ;
typedef TYPE_1__ MSG ;
typedef scalar_t__ BOOL ;


 int DispatchMessageA (TYPE_1__*) ;
 int FALSE ;
 scalar_t__ MsgWaitForMultipleObjects (int ,int *,int ,int,int ) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (TYPE_1__*,int ,int ,int ,int ) ;
 int QS_ALLINPUT ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WM_PAINT ;

__attribute__((used)) static BOOL wait_for_message( MSG *msg )
{
    BOOL ret;

    for (;;)
    {
        ret = PeekMessageA(msg, 0, 0, 0, PM_REMOVE);
        if (ret)
        {
            if (msg->message == WM_PAINT) DispatchMessageA(msg);
            else break;
        }
        else if (MsgWaitForMultipleObjects(0, ((void*)0), FALSE, 100, QS_ALLINPUT) == WAIT_TIMEOUT) break;
    }
    if (!ret) msg->message = 0;
    return ret;
}
