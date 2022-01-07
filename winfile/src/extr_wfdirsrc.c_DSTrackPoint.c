
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WPARAM ;
typedef int ULONG_PTR ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {int dwAttrs; } ;
struct TYPE_10__ {scalar_t__ message; long lParam; } ;
struct TYPE_9__ {scalar_t__ y; scalar_t__ x; } ;
typedef int RECT ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__ MSG ;
typedef TYPE_3__* LPXDTA ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPTSTR ;
typedef int LPPOINT ;
typedef long LPARAM ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ATTR_DIR ;
 int ATTR_PARENT ;
 int ClientToScreen (scalar_t__,int ) ;
 scalar_t__ DOF_DIRECTORY ;
 scalar_t__ DOF_DOCUMENT ;
 scalar_t__ DOF_EXECUTABLE ;
 scalar_t__ DOF_MULTIPLE ;
 scalar_t__ DO_DROPFILE ;
 scalar_t__ DO_PRINTFILE ;
 int DispatchMessage (TYPE_2__*) ;
 scalar_t__ DragObject (int ,scalar_t__,scalar_t__,int ,int *) ;
 int DropFilesOnApplication (scalar_t__) ;
 int FALSE ;
 int FS_GETSELECTION ;
 int GET_WM_COMMAND_MPS (int ,scalar_t__,int ) ;
 scalar_t__ GetCapture () ;
 int GetDesktopWindow () ;
 scalar_t__ GetKeyState (int ) ;
 int GetParent (scalar_t__) ;
 scalar_t__ IsDocument (scalar_t__) ;
 scalar_t__ IsProgramFile (scalar_t__) ;
 scalar_t__ IsWindow (scalar_t__) ;
 int LBN_SELCHANGE ;
 scalar_t__ LB_ERR ;
 int LB_GETANCHORINDEX ;
 int LB_GETSEL ;
 int LB_GETSELCOUNT ;
 int LB_GETTEXT ;
 int LB_SELITEMRANGE ;
 int LB_SETCARETINDEX ;
 int LB_SETSEL ;
 int LocalFree (int ) ;
 long MAKELONG (int,scalar_t__) ;
 int MULTCOPYCURSOR ;
 scalar_t__ MemGetFileName (TYPE_3__*) ;
 int PM_REMOVE ;
 int POINTSTOPOINT (TYPE_1__,long) ;
 scalar_t__ PeekMessage (TYPE_2__*,int *,int ,int ,int ) ;
 int PtInRect (int *,TYPE_1__) ;
 int ReleaseCapture () ;
 int SINGLECOPYCURSOR ;
 int ScreenToClient (scalar_t__,int ) ;
 int SelectItem (scalar_t__,int,int) ;
 scalar_t__ SendMessage (scalar_t__,int ,int,...) ;
 int SetCapture (scalar_t__) ;
 int SetRect (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SetWindowDirectory () ;
 int ShowItemBitmaps (scalar_t__,int) ;
 int TRUE ;
 int UpdateStatus (int ) ;
 int VK_CONTROL ;
 int VK_SHIFT ;
 int WFPrint (scalar_t__) ;
 scalar_t__ WM_CANCELMODE ;
 int WM_COMMAND ;
 scalar_t__ WM_LBUTTONUP ;
 scalar_t__ WM_MOUSEMOVE ;
 scalar_t__ dxClickRect ;
 scalar_t__ dyClickRect ;
 int * hdlgProgress ;
 int * hwndDragging ;
 int iCurDrag ;

INT
DSTrackPoint(
   HWND hwnd,
   HWND hwndLB,
   WPARAM wParam,
   LPARAM lParam,
   BOOL bSearch)
{
   UINT iSel;
   MSG msg;
   RECT rc;
   DWORD dwAnchor;
   DWORD dwTemp;
   LPWSTR pch;
   BOOL bDir;
   BOOL bSelected;
   BOOL bSelectOneItem;
   BOOL bUnselectIfNoDrag;
   LPWSTR pszFile;
   POINT pt;

   bSelectOneItem = FALSE;
   bUnselectIfNoDrag = FALSE;

   bSelected = (BOOL)SendMessage(hwndLB, LB_GETSEL, wParam, 0L);

   if (GetKeyState(VK_SHIFT) < 0) {


      dwAnchor = SendMessage(hwndLB, LB_GETANCHORINDEX, 0, 0L);
      bSelected = (BOOL)SendMessage(hwndLB, LB_GETSEL, dwAnchor, 0L);



      if (!(GetKeyState(VK_CONTROL) < 0))
         SendMessage(hwndLB, LB_SETSEL, FALSE, -1L);


      SendMessage(hwndLB, LB_SELITEMRANGE, bSelected, MAKELONG(wParam, dwAnchor));


      SendMessage(hwndLB, LB_SETCARETINDEX, wParam, 0L);

   } else if (GetKeyState(VK_CONTROL) < 0) {
      if (bSelected)
         bUnselectIfNoDrag = TRUE;
      else
         SelectItem(hwndLB, wParam, TRUE);

   } else {
      if (bSelected)
         bSelectOneItem = TRUE;
      else {

         SendMessage(hwndLB, LB_SETSEL, FALSE, -1L);


         SelectItem(hwndLB, wParam, TRUE);
      }
   }

   if (!bSearch)
      UpdateStatus(GetParent(hwnd));

   POINTSTOPOINT(pt, lParam);
   ClientToScreen(hwndLB, (LPPOINT)&pt);
   ScreenToClient(hwnd, (LPPOINT)&pt);



   SetRect(&rc, pt.x - dxClickRect, pt.y - dyClickRect,
      pt.x + dxClickRect, pt.y + dyClickRect);

   SetCapture(hwnd);

   for (;;) {

      if (GetCapture() != hwnd) {
          msg.message = WM_LBUTTONUP;
          break;
      }

      if (PeekMessage(&msg, ((void*)0), 0, 0, PM_REMOVE)) {
          DispatchMessage(&msg);
      if (msg.message == WM_CANCELMODE || GetCapture() != hwnd) {
              msg.message = WM_LBUTTONUP;

              break;
          }

          if (msg.message == WM_LBUTTONUP)
              break;

          POINTSTOPOINT(pt, msg.lParam);
          if ((msg.message == WM_MOUSEMOVE) && !(PtInRect(&rc, pt)))
              break;
      }
    }
    ReleaseCapture();


    if (msg.message == WM_LBUTTONUP) {
       if (bSelectOneItem) {

          SendMessage(hwndLB, LB_SETSEL, FALSE, -1L);


          SelectItem(hwndLB, wParam, TRUE);
       }

      if (bUnselectIfNoDrag)
         SelectItem(hwndLB, wParam, FALSE);



      SendMessage(hwnd, WM_COMMAND,
         GET_WM_COMMAND_MPS(0, hwndLB, LBN_SELCHANGE));

      return 1;
   }




   if (SendMessage(hwndLB, LB_GETSELCOUNT, 0, 0L) == 1) {

      LPXDTA lpxdta;
      if (SendMessage(hwndLB,
                      LB_GETTEXT,
                      wParam,
                      (LPARAM)&lpxdta) == LB_ERR || !lpxdta) {
         return 1;
      }

      pszFile = MemGetFileName(lpxdta);

      bDir = lpxdta->dwAttrs & ATTR_DIR;




      if (lpxdta->dwAttrs & ATTR_PARENT) {
         return 1;
      }

      if (bDir) {
         iSel = DOF_DIRECTORY;
      } else if (IsProgramFile(pszFile)) {
         iSel = DOF_EXECUTABLE;
      } else if (IsDocument(pszFile)) {
         iSel = DOF_DOCUMENT;
      } else
         iSel = DOF_DOCUMENT;

      iCurDrag = SINGLECOPYCURSOR;
   } else {


      iSel = DOF_MULTIPLE;
      iCurDrag = MULTCOPYCURSOR;
   }



   pch = (LPTSTR)SendMessage(hwnd, FS_GETSELECTION, FALSE, 0L);


   hwndDragging = hwndLB;

   dwTemp = DragObject(GetDesktopWindow(), hwnd, (UINT)iSel, (ULONG_PTR)pch, ((void*)0));

   SetWindowDirectory();

   if (dwTemp == DO_PRINTFILE) {

      hdlgProgress = ((void*)0);
      WFPrint(pch);
   } else if (dwTemp == DO_DROPFILE) {

      DropFilesOnApplication(pch);
   }

   LocalFree((HANDLE)pch);

   if (IsWindow(hwnd))
      ShowItemBitmaps(hwndLB, TRUE);

   hwndDragging = ((void*)0);

   if (!bSearch && IsWindow(hwnd))
      UpdateStatus(GetParent(hwnd));

   return 2;
}
