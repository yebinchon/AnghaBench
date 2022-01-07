
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWINE_ACMNOTIFYWND ;
typedef int HACMOBJ ;
typedef scalar_t__ HACMDRIVERID ;


 int MSACM_GetObj (int ,int ) ;
 int WINE_ACMOBJ_NOTIFYWND ;

PWINE_ACMNOTIFYWND MSACM_GetNotifyWnd(HACMDRIVERID hDriver)
{
    return (PWINE_ACMNOTIFYWND)MSACM_GetObj((HACMOBJ)hDriver, WINE_ACMOBJ_NOTIFYWND);
}
