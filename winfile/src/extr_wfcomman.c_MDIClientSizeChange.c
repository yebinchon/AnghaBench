
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int bottom; int right; } ;
typedef TYPE_1__ RECT ;
typedef int INT ;
typedef int HWND ;


 int DRIVEBAR_FLAG ;
 int FALSE ;
 int GetClientRect (int ,TYPE_1__*) ;
 int InvalidateRect (int ,int *,int ) ;
 int MAKELONG (int ,int ) ;
 int SIZENORMAL ;
 int SendMessage (int ,int ,int ,int ) ;
 int TOOLBAR_FLAG ;
 int TRUE ;
 int UpdateStatus (int ) ;
 int UpdateWindow (int ) ;
 int WM_SIZE ;
 scalar_t__ bDriveBar ;
 scalar_t__ bToolbar ;
 int hwndDriveBar ;
 int hwndFrame ;
 int hwndMDIClient ;
 int hwndToolbar ;

VOID
MDIClientSizeChange(HWND hwndActive,INT iFlags)
{
   RECT rc;

   GetClientRect(hwndFrame, &rc);
   SendMessage(hwndFrame, WM_SIZE, SIZENORMAL, MAKELONG(rc.right, rc.bottom));
   UpdateStatus(hwndActive);

   InvalidateRect(hwndMDIClient, ((void*)0), FALSE);

   if (bDriveBar && (iFlags & DRIVEBAR_FLAG))
      InvalidateRect(hwndDriveBar, ((void*)0), TRUE);
   if (bToolbar && (iFlags & TOOLBAR_FLAG))
      InvalidateRect(hwndToolbar, ((void*)0), TRUE);

   UpdateWindow(hwndFrame);
}
