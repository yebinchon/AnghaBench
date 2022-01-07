
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdwSupport; int dwNotifyMsg; int hNotifyWnd; struct TYPE_3__* pNextACMNotifyWnd; } ;
typedef TYPE_1__* PWINE_ACMNOTIFYWND ;


 int ACMDRIVERDETAILS_SUPPORTF_DISABLED ;
 TYPE_1__* MSACM_pFirstACMNotifyWnd ;
 int MSACM_pendingBroadcast ;
 scalar_t__ MSACM_suspendBroadcastCount ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;

void MSACM_BroadcastNotification(void)
{
    if (MSACM_suspendBroadcastCount <= 0) {
        PWINE_ACMNOTIFYWND panwnd;

        for (panwnd = MSACM_pFirstACMNotifyWnd; panwnd; panwnd = panwnd->pNextACMNotifyWnd)
        if (!(panwnd->fdwSupport & ACMDRIVERDETAILS_SUPPORTF_DISABLED))
            SendMessageW(panwnd->hNotifyWnd, panwnd->dwNotifyMsg, 0, 0);
    } else {
        MSACM_pendingBroadcast = TRUE;
    }
}
