
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tbl ;
typedef size_t WORD ;
typedef void* UINT_PTR ;
struct TYPE_10__ {size_t iStartBmp; scalar_t__ idBitmap; int * hbmButtons; scalar_t__ hModule; int (* ExtProc ) (int ,int ,int ) ;} ;
struct TYPE_9__ {int dwSize; size_t cButtons; TYPE_3__* lpButtons; scalar_t__ idBitmap; int * hBitmap; } ;
struct TYPE_8__ {int fsStyle; scalar_t__ idCommand; } ;
struct TYPE_7__ {void* nID; scalar_t__ hInst; } ;
struct TYPE_6__ {size_t iBitmap; int fsStyle; size_t dwData; scalar_t__ iString; scalar_t__ fsState; scalar_t__ idCommand; } ;
typedef TYPE_1__ TBBUTTON ;
typedef TYPE_2__ TBADDBITMAP ;
typedef scalar_t__ LPTBBUTTON ;
typedef scalar_t__ LPFMS_TOOLBARLOAD ;
typedef TYPE_3__* LPEXT_BUTTON ;
typedef int LPARAM ;
typedef size_t INT ;
typedef TYPE_4__ FMS_TOOLBARLOAD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CreateToolbarEx (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 scalar_t__ FALSE ;
 int FMEVENT_TOOLBARLOAD ;
 int IDB_TOOLBAR ;
 int IDC_EXTENSIONS ;
 int LastButtonIsSeparator (scalar_t__) ;
 scalar_t__ SendMessage (scalar_t__,int ,size_t,int ) ;
 scalar_t__ TBSTATE_ENABLED ;
 int TBSTYLE_SEP ;
 int TB_ADDBITMAP ;
 int TB_INSERTBUTTON ;
 scalar_t__ TRUE ;
 int WS_CHILD ;
 TYPE_5__* extensions ;
 int hAppInstance ;
 scalar_t__ hwndExtensions ;
 int hwndFrame ;
 scalar_t__ hwndToolbar ;
 int stub1 (int ,int ,int ) ;
 int tbButtons ;

BOOL
InitToolbarExtension(INT iExt)
{
   TBBUTTON extButton;
   FMS_TOOLBARLOAD tbl;
   LPEXT_BUTTON lpButton;
   INT i, iStart, iBitmap;
   BOOL fSepLast;
   TBADDBITMAP tbAddBitmap;

   tbl.dwSize = sizeof(tbl);
   tbl.lpButtons = ((void*)0);
   tbl.cButtons = 0;
   tbl.idBitmap = 0;
   tbl.hBitmap = ((void*)0);


   if (!extensions[iExt].ExtProc(hwndFrame, FMEVENT_TOOLBARLOAD,
       (LPARAM)(LPFMS_TOOLBARLOAD)&tbl))

      return FALSE;

   if (tbl.dwSize != sizeof(tbl)) {

      if (!(0x10 == tbl.dwSize && tbl.idBitmap))

         return FALSE;
   }

   if (!tbl.cButtons || !tbl.lpButtons || (!tbl.idBitmap && !tbl.hBitmap))
      return FALSE;



   if (hwndExtensions) {



      if (!LastButtonIsSeparator(hwndExtensions))
         goto AddSep;
   } else {
      hwndExtensions = CreateToolbarEx(hwndFrame, WS_CHILD,
         IDC_EXTENSIONS, 0, hAppInstance, IDB_TOOLBAR, tbButtons, 0,
         0,0,0,0,sizeof(TBBUTTON));

      if (!hwndExtensions)
         return FALSE;

AddSep:
      extButton.iBitmap = 0;
      extButton.idCommand = 0;
      extButton.fsState = 0;
      extButton.fsStyle = TBSTYLE_SEP;
      extButton.dwData = 0;
      extButton.iString = 0;

      SendMessage(hwndExtensions, TB_INSERTBUTTON, (WORD)-1,
         (LPARAM)(LPTBBUTTON)&extButton);
   }




   if (tbl.idBitmap) {
      tbAddBitmap.hInst = extensions[iExt].hModule;
      tbAddBitmap.nID = (UINT_PTR)tbl.idBitmap;
      iStart = (INT)SendMessage(hwndToolbar, TB_ADDBITMAP, tbl.cButtons,
                               (LPARAM) &tbAddBitmap);
   } else {
      tbAddBitmap.hInst = 0;
      tbAddBitmap.nID = (UINT_PTR)tbl.hBitmap;
      iStart = (INT)SendMessage(hwndToolbar, TB_ADDBITMAP, tbl.cButtons,
                               (LPARAM) &tbAddBitmap);
   }


   extensions[iExt].hbmButtons = tbl.hBitmap;
   extensions[iExt].idBitmap = tbl.idBitmap;
   extensions[iExt].iStartBmp = iStart;





   for (fSepLast=TRUE, i=tbl.cButtons, iBitmap=0, lpButton=tbl.lpButtons;
      i>0; --i, ++lpButton) {

      if (lpButton->fsStyle & TBSTYLE_SEP) {
         if (fSepLast)
            continue;

         extButton.iBitmap = 0;
         fSepLast = TRUE;
      } else {
         extButton.iBitmap = iBitmap;
         ++iBitmap;
         fSepLast = FALSE;
      }

      extButton.fsStyle = (BYTE)lpButton->fsStyle;
      extButton.idCommand = lpButton->idCommand;
      extButton.fsState = TBSTATE_ENABLED;
      extButton.dwData = iExt + 1;
      extButton.iString = 0;

      SendMessage(hwndExtensions, TB_INSERTBUTTON, (WORD)-1,
         (LPARAM)(LPTBBUTTON)&extButton);
   }

   return TRUE;
}
