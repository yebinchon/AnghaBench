
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WCHAR ;
struct TYPE_6__ {scalar_t__ hmdiclient; } ;
struct TYPE_4__ {int path; } ;
struct TYPE_5__ {TYPE_1__ root; } ;
typedef int LPCWSTR ;
typedef scalar_t__ HWND ;
typedef TYPE_2__ ChildWnd ;
typedef int BOOL ;


 int FALSE ;
 int GWLP_USERDATA ;
 int GW_CHILD ;
 int GW_HWNDNEXT ;
 scalar_t__ GetNextWindow (scalar_t__,int ) ;
 scalar_t__ GetWindowLongPtrW (scalar_t__,int ) ;
 TYPE_3__ Globals ;
 scalar_t__ IsIconic (scalar_t__) ;
 int SW_SHOWNORMAL ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int ShowWindow (scalar_t__,int ) ;
 int TRUE ;
 int WM_MDIACTIVATE ;
 int _MAX_DRIVE ;
 int _wsplitpath (int ,int *,int ,int ,int ) ;
 int lstrcmpiW (int *,int *) ;

__attribute__((used)) static BOOL activate_drive_window(LPCWSTR path)
{
 WCHAR drv1[_MAX_DRIVE], drv2[_MAX_DRIVE];
 HWND child_wnd;

 _wsplitpath(path, drv1, 0, 0, 0);


 for(child_wnd=GetNextWindow(Globals.hmdiclient,GW_CHILD); child_wnd; child_wnd=GetNextWindow(child_wnd, GW_HWNDNEXT)) {
  ChildWnd* child = (ChildWnd*)GetWindowLongPtrW(child_wnd, GWLP_USERDATA);

  if (child) {
   _wsplitpath(child->root.path, drv2, 0, 0, 0);

   if (!lstrcmpiW(drv2, drv1)) {
    SendMessageW(Globals.hmdiclient, WM_MDIACTIVATE, (WPARAM)child_wnd, 0);

    if (IsIconic(child_wnd))
     ShowWindow(child_wnd, SW_SHOWNORMAL);

    return TRUE;
   }
  }
 }

 return FALSE;
}
