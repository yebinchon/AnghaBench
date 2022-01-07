
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_4__ {scalar_t__ idM; } ;
struct TYPE_3__ {scalar_t__ fsStyle; scalar_t__ idCommand; } ;
typedef scalar_t__ LPTBBUTTON ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;
typedef int HMENU ;


 int AddExtensionToolbarButtons (int ) ;
 int EnableStopShareButton () ;
 int GetMenu (int ) ;
 int GetMenuState (int ,scalar_t__,int ) ;
 scalar_t__ InitPopupMenus (int,int ,scalar_t__) ;
 int MF_BYCOMMAND ;
 int MF_CHECKED ;
 int MF_DISABLED ;
 int MF_GRAYED ;
 scalar_t__ SendMessage (int ,int ,scalar_t__,int) ;
 scalar_t__ TBAR_ALL_BUTTONS ;
 scalar_t__ TBAR_BUTTON_COUNT ;
 scalar_t__ TBSTYLE_SEP ;
 int TB_ADDBUTTONS ;
 int TB_BUTTONCOUNT ;
 int TB_CHECKBUTTON ;
 int TB_DELETEBUTTON ;
 int TB_ENABLEBUTTON ;
 int TRUE ;
 int WM_MDIGETACTIVE ;
 int hwndFrame ;
 int hwndMDIClient ;
 int hwndToolbar ;
 TYPE_2__* sAllButtons ;
 TYPE_1__* tbButtons ;

VOID
ResetToolbar(void)
{
   INT nItem;
   INT i, idCommand;
   HMENU hMenu;
   UINT state;

   HWND hwndActive;



   for (nItem=(INT)SendMessage(hwndToolbar, TB_BUTTONCOUNT, 0, 0L)-1;
      nItem>=0; --nItem)

      SendMessage(hwndToolbar, TB_DELETEBUTTON, nItem, 0L);



   SendMessage(hwndToolbar, TB_ADDBUTTONS, TBAR_BUTTON_COUNT,
      (LPARAM)(LPTBBUTTON)tbButtons);



   AddExtensionToolbarButtons(TRUE);



   hMenu = GetMenu(hwndFrame);

   hwndActive = (HWND) SendMessage(hwndMDIClient, WM_MDIGETACTIVE, 0, 0L);

   if (hwndActive && InitPopupMenus(0xffff, hMenu, hwndActive)) {
      for (i=0; i<TBAR_BUTTON_COUNT; ++i) {
         if (tbButtons[i].fsStyle == TBSTYLE_SEP)
            continue;

         idCommand = tbButtons[i].idCommand;
         state = GetMenuState(hMenu, idCommand, MF_BYCOMMAND);

         SendMessage(hwndToolbar, TB_CHECKBUTTON, idCommand, state&MF_CHECKED);
         SendMessage(hwndToolbar, TB_ENABLEBUTTON, idCommand,
            !(state&(MF_DISABLED|MF_GRAYED)));
      }

      for (i=0; i<TBAR_ALL_BUTTONS; ++i) {
         idCommand = sAllButtons[i].idM;
         state = GetMenuState(hMenu, idCommand, MF_BYCOMMAND);
         SendMessage(hwndToolbar, TB_CHECKBUTTON, idCommand, state&MF_CHECKED);
         SendMessage(hwndToolbar, TB_ENABLEBUTTON, idCommand,
            !(state&(MF_DISABLED|MF_GRAYED)));
      }
   } else {
      EnableStopShareButton();
   }
}
