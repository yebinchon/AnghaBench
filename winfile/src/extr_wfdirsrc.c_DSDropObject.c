
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_6__ {scalar_t__ dwControlData; scalar_t__ hwndSource; scalar_t__ wFmt; scalar_t__ dwData; } ;
struct TYPE_5__ {scalar_t__ dwAttrs; } ;
typedef scalar_t__ LPXDTALINK ;
typedef TYPE_1__* LPXDTA ;
typedef int * LPWSTR ;
typedef TYPE_2__* LPDROPSTRUCT ;
typedef long LPARAM ;
typedef scalar_t__ HWND ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ATTR_DIR ;
 scalar_t__ ATTR_PARENT ;
 int AddBackslash (int *) ;
 int CHAR_NULL ;
 int COUNTOF (int *) ;
 int CheckEsc (int *) ;
 scalar_t__ DMMoveCopyHelper (int *,int *,int ) ;
 scalar_t__ DOF_DIRECTORY ;
 int DSRectItem (scalar_t__,int ,scalar_t__,scalar_t__) ;
 scalar_t__ ExecProgram (int *,int *,int *,scalar_t__,scalar_t__) ;
 scalar_t__ FALSE ;
 int FSC_REFRESH ;
 int FS_GETDIRECTORY ;
 int FS_GETSELECTION ;
 int GWL_HDTA ;
 int GWL_LISTPARMS ;
 scalar_t__* GetExtension (int *) ;
 scalar_t__ GetWindowLongPtr (scalar_t__,int ) ;
 int IDS_EXECERRTITLE ;
 int IDS_EXECMOUSECONFIRM ;
 int IDS_MOUSECONFIRM ;
 scalar_t__ IDYES ;
 int IsProgramFile (int *) ;
 scalar_t__ LB_ERR ;
 int LB_GETSEL ;
 int LB_GETTEXT ;
 int LoadString (int ,int ,int *,int) ;
 int LocalFree (int ) ;
 int MAXPATHLEN ;
 int MB_ICONEXCLAMATION ;
 int MB_OK ;
 int MB_SYSTEMMODAL ;
 int MB_YESNO ;
 int * MemGetFileName (TYPE_1__*) ;
 scalar_t__ MessageBox (int ,int ,int *,int) ;
 int MyMessageBox (int ,int ,int ,int) ;
 int SB_SIMPLE ;
 int * SZ_BACKSLASH ;
 int * SZ_DOT ;
 scalar_t__ SendMessage (scalar_t__,int ,int,long) ;
 int SetCurrentDirectory (int *) ;
 int StripBackslash (int *) ;
 int StripFilespec (int *) ;
 scalar_t__ TRUE ;
 int UpdateWindow (scalar_t__) ;
 int WM_FSC ;
 int WM_MDIGETACTIVE ;
 scalar_t__ bConfirmMouse ;
 int fShowSourceBitmaps ;
 int hAppInstance ;
 int hwndFrame ;
 scalar_t__ hwndMDIClient ;
 scalar_t__ hwndSearch ;
 scalar_t__ hwndStatus ;
 int iSelHighlight ;
 int lstrcat (int *,int *) ;
 int lstrcpy (int *,int *) ;
 int lstrlen (int *) ;
 int szMessage ;
 int * szStarDotStar ;
 int * szTitle ;
 int wsprintf (int ,int *,int *,int *) ;

BOOL
DSDropObject(
   HWND hwndHolder,
   HWND hwndLB,
   LPDROPSTRUCT lpds,
   BOOL bSearch)
{
   DWORD ret;
   LPWSTR pFrom;
   DWORD dwAttrib = 0;
   DWORD dwSelSink;
   LPWSTR pSel;
   LPWSTR pSelNoQuote;
   LPXDTA lpxdta;
   LPXDTALINK lpStart;

   WCHAR szTemp[MAXPATHLEN*2];
   WCHAR szSourceFile[MAXPATHLEN+2];
   WCHAR szSourceFileQualified[MAXPATHLEN+2];




   SendMessage(hwndStatus, SB_SIMPLE, 0, 0L);
   UpdateWindow(hwndStatus);




   dwSelSink = lpds->dwControlData;






   if (hwndHolder == lpds->hwndSource) {
      if ((dwSelSink == (DWORD)-1) || SendMessage(hwndLB, LB_GETSEL, dwSelSink, 0L))
         return TRUE;
   }




   SendMessage(hwndHolder, FS_GETDIRECTORY, COUNTOF(szTemp), (LPARAM)szTemp);




   if (dwSelSink == (DWORD)-1) {
      goto NormalMoveCopy;
   }




   lpStart = (LPXDTALINK)GetWindowLongPtr(hwndHolder, GWL_HDTA);




   if (!lpStart)
      goto NormalMoveCopy;

   if (SendMessage(hwndLB,
                   LB_GETTEXT,
                   dwSelSink,
                   (LPARAM)&lpxdta) == LB_ERR || !lpxdta) {
      goto NormalMoveCopy;
   }

   lstrcpy(szSourceFile, MemGetFileName(lpxdta));
   dwAttrib = lpxdta->dwAttrs;

   if (dwAttrib & ATTR_DIR) {

      if (bSearch) {

         lstrcpy(szTemp, szSourceFile);

      } else {




         if (dwAttrib & ATTR_PARENT) {
            StripBackslash(szTemp);
            StripFilespec(szTemp);
         } else {
            lstrcat(szTemp, szSourceFile);
         }
      }
      goto DirMoveCopy;
   }




   if (!IsProgramFile(szSourceFile))
      goto NormalMoveCopy;




   if (lpds->wFmt == DOF_DIRECTORY) {
      DSRectItem(hwndLB, iSelHighlight, FALSE, FALSE);
      return FALSE;
   }







   SendMessage(hwndHolder, FS_GETDIRECTORY, COUNTOF(szTemp), (LPARAM)szTemp);
   StripBackslash(szTemp);

   SetCurrentDirectory(szTemp);





   lstrcpy(szSourceFileQualified, szTemp);
   lstrcat(szSourceFileQualified, SZ_BACKSLASH);
   lstrcat(szSourceFileQualified, szSourceFile);




   pSel = (LPWSTR)SendMessage(lpds->hwndSource, FS_GETSELECTION, 1, 0L);
   pSelNoQuote = (LPWSTR)SendMessage(lpds->hwndSource, FS_GETSELECTION, 1|16, 0L);
   if (!pSel || !pSelNoQuote)
   {
      goto DODone;
   }

   if (lstrlen(pSel) > MAXPATHLEN)
      goto DODone;




   CheckEsc(szSourceFile);

   if (bConfirmMouse) {

      LoadString(hAppInstance, IDS_MOUSECONFIRM, szTitle, COUNTOF(szTitle));
      LoadString(hAppInstance, IDS_EXECMOUSECONFIRM, szTemp, COUNTOF(szTemp));

      wsprintf(szMessage, szTemp, szSourceFile, pSel);
      if (MessageBox(hwndFrame, szMessage, szTitle, MB_YESNO | MB_ICONEXCLAMATION) != IDYES)
         goto DODone;
   }






   if (lpds->hwndSource == hwndSearch) {
      szTemp[0] = CHAR_NULL;
   } else {
      SendMessage(lpds->hwndSource, FS_GETDIRECTORY, COUNTOF(szTemp), (LPARAM)szTemp);
   }

   lstrcat(szTemp, pSelNoQuote);




   if (*GetExtension(szTemp) == 0)
      lstrcat(szTemp, SZ_DOT);




   CheckEsc(szTemp);

   ret = ExecProgram(szSourceFileQualified, szTemp, ((void*)0), FALSE, FALSE);

   if (ret)
      MyMessageBox(hwndFrame, IDS_EXECERRTITLE, (WORD)ret, MB_OK | MB_ICONEXCLAMATION | MB_SYSTEMMODAL);

DODone:
   DSRectItem(hwndLB, iSelHighlight, FALSE, FALSE);
   if (pSel)
   {
      LocalFree((HANDLE)pSel);
   }
   if (pSelNoQuote)
   {
      LocalFree((HANDLE)pSelNoQuote);
   }
   return TRUE;



NormalMoveCopy:



   if (GetWindowLongPtr(hwndHolder,
                     GWL_LISTPARMS) == SendMessage(hwndMDIClient,
                                                   WM_MDIGETACTIVE,
                                                   0,
                                                   0L)) {
      return TRUE;
   }

DirMoveCopy:




   pFrom = (LPWSTR)lpds->dwData;

   AddBackslash(szTemp);
   lstrcat(szTemp, szStarDotStar);




   CheckEsc(szTemp);

   ret = DMMoveCopyHelper(pFrom, szTemp, fShowSourceBitmaps);

   DSRectItem(hwndLB, iSelHighlight, FALSE, FALSE);

   if (ret)
      return TRUE;
   return TRUE;
}
