
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {scalar_t__ bUnicode; scalar_t__ Delta; scalar_t__ iStartBmp; int (* ExtProc ) (int ,int ,int ) ;int hMenu; } ;
struct TYPE_11__ {int idB; int idM; } ;
struct TYPE_10__ {int idCommand; void** szHelp; int hMenu; } ;
struct TYPE_9__ {int iBitmap; int idCommand; int fsStyle; size_t dwData; int fsState; } ;
struct TYPE_8__ {int iItem; void** pszText; TYPE_2__ tbButton; } ;
typedef TYPE_1__* LPTBNOTIFY ;
typedef TYPE_2__* LPTBBUTTON ;
typedef scalar_t__ LPFMS_HELPSTRING ;
typedef int LPARAM ;
typedef size_t INT ;
typedef TYPE_3__ FMS_HELPSTRING ;
typedef void* CHAR ;
typedef scalar_t__ BOOL ;


 int COUNTOF (void**) ;
 int CP_ACP ;
 scalar_t__ FALSE ;
 int FMEVENT_HELPSTRING ;
 int HIDEIT ;
 int LoadDesc (int,void**) ;
 int MAXDESCLEN ;
 int MB_PRECOMPOSED ;
 int MultiByteToWideChar (int ,int ,void**,int ,void**,int ) ;
 scalar_t__ SendMessage (scalar_t__,int ,int,int ) ;
 int StrNCpy (void**,void**,int) ;
 scalar_t__ TBAR_ALL_BUTTONS ;
 int TBAR_BUTTON_COUNT ;
 int TBSTATE_ENABLED ;
 int TBSTATE_HIDDEN ;
 int TBSTYLE_SEP ;
 int TB_GETBUTTON ;
 void* TEXT (char) ;
 scalar_t__ TRUE ;
 TYPE_6__* extensions ;
 scalar_t__ hwndExtensions ;
 int hwndFrame ;
 scalar_t__ iNumExtensions ;
 int memcpy (void**,void**,int ) ;
 TYPE_5__* sAllButtons ;
 int stub1 (int ,int ,int ) ;
 TYPE_2__* tbButtons ;

BOOL
GetAdjustInfo(LPTBNOTIFY lpTBNotify)
{
   LPTBBUTTON lpButton = &lpTBNotify->tbButton;
   FMS_HELPSTRING tbl;
   INT iExt;
   int j = lpTBNotify->iItem;


   if ((UINT)j < TBAR_ALL_BUTTONS) {

      *lpButton = tbButtons[TBAR_BUTTON_COUNT-1];
      lpButton->iBitmap = sAllButtons[j].idB & ~HIDEIT;
      lpButton->fsState = (sAllButtons[j].idB & HIDEIT)
         ? TBSTATE_HIDDEN : TBSTATE_ENABLED;
      lpButton->idCommand = sAllButtons[j].idM;

LoadDescription:
      lpTBNotify->pszText[0] = TEXT('\0');
      if (!(lpButton->fsStyle & TBSTYLE_SEP))
         LoadDesc(lpButton->idCommand, lpTBNotify->pszText);

UnlockAndReturn:
      return(TRUE);
   }

   j -= TBAR_ALL_BUTTONS;
   if (hwndExtensions && SendMessage(hwndExtensions, TB_GETBUTTON, j,
      (LPARAM)lpButton)) {

      if (lpButton->fsStyle & TBSTYLE_SEP)
         goto LoadDescription;

      iExt = lpButton->dwData - 1;

      if ((UINT)iExt < (UINT)iNumExtensions) {
         tbl.idCommand = lpButton->idCommand % 100;
         tbl.hMenu = extensions[iExt].hMenu;
         tbl.szHelp[0] = TEXT('\0');

         extensions[iExt].ExtProc(hwndFrame, FMEVENT_HELPSTRING,
             (LPARAM)(LPFMS_HELPSTRING)&tbl);

         if (extensions[iExt].bUnicode == FALSE) {
            CHAR szAnsi[MAXDESCLEN];

            memcpy (szAnsi, tbl.szHelp, COUNTOF(szAnsi));
            MultiByteToWideChar (CP_ACP, MB_PRECOMPOSED, szAnsi, COUNTOF(szAnsi),
                                 tbl.szHelp, COUNTOF(tbl.szHelp));
         }

         StrNCpy(lpTBNotify->pszText, tbl.szHelp, MAXDESCLEN - 1);


         lpButton->iBitmap += extensions[iExt].iStartBmp;
         lpButton->idCommand += extensions[iExt].Delta;

         goto UnlockAndReturn;
      }
   }

   return FALSE;
}
