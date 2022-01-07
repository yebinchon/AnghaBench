
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* pPrevACMNotifyWnd; struct TYPE_8__* pNextACMNotifyWnd; } ;
typedef TYPE_1__ WINE_ACMNOTIFYWND ;
typedef TYPE_1__ const* PWINE_ACMNOTIFYWND ;


 int HeapFree (int ,int ,TYPE_1__ const*) ;
 int MSACM_hHeap ;
 TYPE_1__ const* MSACM_pFirstACMNotifyWnd ;
 TYPE_1__ const* MSACM_pLastACMNotifyWnd ;

PWINE_ACMNOTIFYWND MSACM_UnRegisterNotificationWindow(const WINE_ACMNOTIFYWND *panwnd)
{
    PWINE_ACMNOTIFYWND p;

    for (p = MSACM_pFirstACMNotifyWnd; p; p = p->pNextACMNotifyWnd) {
        if (p == panwnd) {
            PWINE_ACMNOTIFYWND pNext = p->pNextACMNotifyWnd;

            if (p->pPrevACMNotifyWnd) p->pPrevACMNotifyWnd->pNextACMNotifyWnd = p->pNextACMNotifyWnd;
            if (p->pNextACMNotifyWnd) p->pNextACMNotifyWnd->pPrevACMNotifyWnd = p->pPrevACMNotifyWnd;
            if (MSACM_pFirstACMNotifyWnd == p) MSACM_pFirstACMNotifyWnd = p->pNextACMNotifyWnd;
            if (MSACM_pLastACMNotifyWnd == p) MSACM_pLastACMNotifyWnd = p->pPrevACMNotifyWnd;
            HeapFree(MSACM_hHeap, 0, p);

            return pNext;
        }
    }
    return ((void*)0);
}
