
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int UINT ;
typedef int LPARAM ;
typedef int BOOL ;


 int FALSE ;
 int IContextMenu2_HandleMenuMsg (scalar_t__,int ,int ,int ) ;
 int IContextMenu3_HandleMenuMsg (scalar_t__,int ,int ,int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;
 scalar_t__ s_pctxmenu2 ;
 scalar_t__ s_pctxmenu3 ;

__attribute__((used)) static BOOL CtxMenu_HandleMenuMsg(UINT nmsg, WPARAM wparam, LPARAM lparam)
{
 if (s_pctxmenu3) {
  if (SUCCEEDED(IContextMenu3_HandleMenuMsg(s_pctxmenu3, nmsg, wparam, lparam)))
   return TRUE;
 }

 if (s_pctxmenu2)
  if (SUCCEEDED(IContextMenu2_HandleMenuMsg(s_pctxmenu2, nmsg, wparam, lparam)))
   return TRUE;

 return FALSE;
}
