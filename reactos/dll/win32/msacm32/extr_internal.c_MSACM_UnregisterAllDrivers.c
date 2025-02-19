
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PWINE_ACMNOTIFYWND ;
typedef scalar_t__ PWINE_ACMDRIVERID ;


 scalar_t__ MSACM_UnRegisterNotificationWindow (scalar_t__) ;
 scalar_t__ MSACM_UnregisterDriver (scalar_t__) ;
 int MSACM_WriteCache (scalar_t__) ;
 scalar_t__ MSACM_pFirstACMDriverID ;
 scalar_t__ MSACM_pFirstACMNotifyWnd ;

void MSACM_UnregisterAllDrivers(void)
{
    PWINE_ACMNOTIFYWND panwnd = MSACM_pFirstACMNotifyWnd;
    PWINE_ACMDRIVERID p = MSACM_pFirstACMDriverID;

    while (p) {
 MSACM_WriteCache(p);
 p = MSACM_UnregisterDriver(p);
    }

    while (panwnd) {
 panwnd = MSACM_UnRegisterNotificationWindow(panwnd);
    }
}
