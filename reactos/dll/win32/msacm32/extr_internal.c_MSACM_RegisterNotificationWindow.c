
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WINE_ACMNOTIFYWND ;
struct TYPE_7__ {scalar_t__ pACMDriverID; int dwType; } ;
struct TYPE_8__ {struct TYPE_8__* pNextACMNotifyWnd; struct TYPE_8__* pPrevACMNotifyWnd; scalar_t__ fdwSupport; int dwNotifyMsg; int hNotifyWnd; TYPE_1__ obj; } ;
typedef TYPE_2__* PWINE_ACMNOTIFYWND ;
typedef int HWND ;
typedef int DWORD ;


 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int MSACM_hHeap ;
 TYPE_2__* MSACM_pFirstACMNotifyWnd ;
 TYPE_2__* MSACM_pLastACMNotifyWnd ;
 int TRACE (char*,int ,int ) ;
 int WINE_ACMOBJ_NOTIFYWND ;

PWINE_ACMNOTIFYWND MSACM_RegisterNotificationWindow(HWND hNotifyWnd, DWORD dwNotifyMsg)
{
    PWINE_ACMNOTIFYWND panwnd;

    TRACE("(%p,0x%08x)\n", hNotifyWnd, dwNotifyMsg);

    panwnd = HeapAlloc(MSACM_hHeap, 0, sizeof(WINE_ACMNOTIFYWND));
    panwnd->obj.dwType = WINE_ACMOBJ_NOTIFYWND;
    panwnd->obj.pACMDriverID = 0;
    panwnd->hNotifyWnd = hNotifyWnd;
    panwnd->dwNotifyMsg = dwNotifyMsg;
    panwnd->fdwSupport = 0;

    panwnd->pNextACMNotifyWnd = ((void*)0);
    panwnd->pPrevACMNotifyWnd = MSACM_pLastACMNotifyWnd;
    if (MSACM_pLastACMNotifyWnd)
        MSACM_pLastACMNotifyWnd->pNextACMNotifyWnd = panwnd;
    MSACM_pLastACMNotifyWnd = panwnd;
    if (!MSACM_pFirstACMNotifyWnd)
        MSACM_pFirstACMNotifyWnd = panwnd;

    return panwnd;
}
