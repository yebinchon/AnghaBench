
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int MSACM_BroadcastNotification () ;
 scalar_t__ MSACM_pendingBroadcast ;
 scalar_t__ MSACM_suspendBroadcastCount ;

void MSACM_EnableNotifications(void)
{
    if (MSACM_suspendBroadcastCount > 0) {
        MSACM_suspendBroadcastCount--;
        if (MSACM_suspendBroadcastCount == 0 && MSACM_pendingBroadcast) {
            MSACM_pendingBroadcast = FALSE;
            MSACM_BroadcastNotification();
        }
    }
}
