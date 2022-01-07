
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
typedef scalar_t__ WORD ;
typedef int VOID ;
struct TYPE_6__ {scalar_t__ hwndSink; scalar_t__ dwControlData; int ptDrop; } ;
struct TYPE_5__ {int dwAttrs; } ;
typedef TYPE_1__* LPXDTA ;
typedef scalar_t__ LPTSTR ;
typedef TYPE_2__* LPDROPSTRUCT ;
typedef long LPARAM ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ATTR_DIR ;
 int FALSE ;
 int FS_GETDRIVE ;
 scalar_t__ GetDrive (scalar_t__,int ) ;
 scalar_t__ GetKeyState (int ) ;
 scalar_t__ GetMDIChildFromDescendant (scalar_t__) ;
 int GetMoveCopyCursor () ;
 scalar_t__ GetParent (scalar_t__) ;
 scalar_t__ HasDirWindow (scalar_t__) ;
 scalar_t__ IsProgramFile (int ) ;
 int LB_GETTEXT ;
 int LoadCursor (int ,scalar_t__) ;
 scalar_t__ MAKEINTRESOURCE (int) ;
 int MemGetFileName (TYPE_1__*) ;
 scalar_t__ SendMessage (scalar_t__,int ,scalar_t__,long) ;
 int SetCursor (int ) ;
 int ShowItemBitmaps (scalar_t__,int) ;
 int TRUE ;
 int VK_CONTROL ;
 int VK_MENU ;
 int VK_SHIFT ;
 int hAppInstance ;
 scalar_t__ hwndGlobalSink ;
 int iCurDrag ;

VOID
DSDragLoop(HWND hwndLB, WPARAM wParam, LPDROPSTRUCT lpds)
{
   BOOL bShowBitmap;
   LPXDTA lpxdta;
   HWND hwndMDIChildSink, hwndDir;
   BOOL bForceMoveCur = FALSE;
   hwndGlobalSink = lpds->hwndSink;




   bShowBitmap = TRUE;




   if (!wParam)
      goto DragLoopCont;




   if (GetKeyState(VK_CONTROL) < 0) {
       bShowBitmap = TRUE;
       goto DragLoopCont;
   }




   if (GetKeyState(VK_MENU)<0 || GetKeyState(VK_SHIFT)<0) {
      bShowBitmap = FALSE;
      goto DragLoopCont;
   }

   hwndMDIChildSink = GetMDIChildFromDescendant(lpds->hwndSink);




   if (lpds->hwndSink == hwndLB) {




      if (lpds->dwControlData == (DWORD)-1) {




         bForceMoveCur = TRUE;
         goto DragLoopCont;

      } else {




         SendMessage(hwndLB, LB_GETTEXT, (WPARAM)(lpds->dwControlData), (LPARAM)&lpxdta);

         if (!(lpxdta && lpxdta->dwAttrs & ATTR_DIR)) {




            bForceMoveCur = TRUE;

            goto DragLoopCont;
         }
      }
   }
   if (hwndMDIChildSink)
      hwndDir = HasDirWindow(hwndMDIChildSink);
   else
      hwndDir = ((void*)0);

   if (hwndDir && (hwndDir == GetParent(lpds->hwndSink))) {




      if (lpds->dwControlData != (DWORD)-1) {




         SendMessage(lpds->hwndSink, LB_GETTEXT, (WORD)(lpds->dwControlData), (LPARAM)(LPTSTR)&lpxdta);

         if (lpxdta && IsProgramFile(MemGetFileName(lpxdta))) {
            goto DragLoopCont;
         }
      }
   }




   bShowBitmap = ((INT)SendMessage(GetParent(hwndLB), FS_GETDRIVE, 0, 0L) !=
                  GetDrive(lpds->hwndSink, lpds->ptDrop));

DragLoopCont:

   ShowItemBitmaps(hwndLB, bShowBitmap);




   if (wParam) {
      if (bForceMoveCur) {
         SetCursor(LoadCursor(hAppInstance, (LPTSTR) MAKEINTRESOURCE(iCurDrag & ~1)));
      } else {
         SetCursor(GetMoveCopyCursor());
      }
   }
}
