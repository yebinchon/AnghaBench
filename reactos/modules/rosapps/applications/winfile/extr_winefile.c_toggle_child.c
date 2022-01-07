
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int hMenuOptions; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int CheckMenuItem (int ,int ,int) ;
 TYPE_2__ Globals ;
 scalar_t__ IsWindowVisible (int ) ;
 int MF_BYCOMMAND ;
 int MF_CHECKED ;
 int SW_HIDE ;
 int SW_SHOW ;
 int ShowWindow (int ,int ) ;
 int fullscreen_move (int ) ;
 TYPE_1__ g_fullscreen ;
 int resize_frame_client (int ) ;

__attribute__((used)) static void toggle_child(HWND hwnd, UINT cmd, HWND hchild)
{
 BOOL vis = IsWindowVisible(hchild);

 CheckMenuItem(Globals.hMenuOptions, cmd, vis?MF_BYCOMMAND:MF_BYCOMMAND|MF_CHECKED);

 ShowWindow(hchild, vis?SW_HIDE:SW_SHOW);

 if (g_fullscreen.mode)
  fullscreen_move(hwnd);

 resize_frame_client(hwnd);
}
