#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {scalar_t__ dwControlData; scalar_t__ hwndSource; scalar_t__ wFmt; scalar_t__ dwData; } ;
struct TYPE_5__ {scalar_t__ dwAttrs; } ;
typedef  scalar_t__ LPXDTALINK ;
typedef  TYPE_1__* LPXDTA ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  TYPE_2__* LPDROPSTRUCT ;
typedef  long LPARAM ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ATTR_DIR ; 
 scalar_t__ ATTR_PARENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CHAR_NULL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ DOF_DIRECTORY ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FALSE ; 
 int FSC_REFRESH ; 
 int /*<<< orphan*/  FS_GETDIRECTORY ; 
 int /*<<< orphan*/  FS_GETSELECTION ; 
 int /*<<< orphan*/  GWL_HDTA ; 
 int /*<<< orphan*/  GWL_LISTPARMS ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_EXECERRTITLE ; 
 int /*<<< orphan*/  IDS_EXECMOUSECONFIRM ; 
 int /*<<< orphan*/  IDS_MOUSECONFIRM ; 
 scalar_t__ IDYES ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETSEL ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int MAXPATHLEN ; 
 int MB_ICONEXCLAMATION ; 
 int MB_OK ; 
 int MB_SYSTEMMODAL ; 
 int MB_YESNO ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SB_SIMPLE ; 
 int /*<<< orphan*/ * SZ_BACKSLASH ; 
 int /*<<< orphan*/ * SZ_DOT ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ,int,long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  WM_FSC ; 
 int /*<<< orphan*/  WM_MDIGETACTIVE ; 
 scalar_t__ bConfirmMouse ; 
 int /*<<< orphan*/  fShowSourceBitmaps ; 
 int /*<<< orphan*/  hAppInstance ; 
 int /*<<< orphan*/  hwndFrame ; 
 scalar_t__ hwndMDIClient ; 
 scalar_t__ hwndSearch ; 
 scalar_t__ hwndStatus ; 
 int /*<<< orphan*/  iSelHighlight ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szMessage ; 
 int /*<<< orphan*/ * szStarDotStar ; 
 int /*<<< orphan*/ * szTitle ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BOOL
FUNC23(
   HWND hwndHolder,
   HWND hwndLB,
   LPDROPSTRUCT lpds,
   BOOL bSearch)
{
   DWORD      ret;
   LPWSTR     pFrom;
   DWORD      dwAttrib = 0;       // init this to not a dir
   DWORD      dwSelSink;
   LPWSTR     pSel;
   LPWSTR     pSelNoQuote;
   LPXDTA     lpxdta;
   LPXDTALINK lpStart;

   WCHAR szTemp[MAXPATHLEN*2];
   WCHAR szSourceFile[MAXPATHLEN+2];
   WCHAR szSourceFileQualified[MAXPATHLEN+2];

   //
   // Turn off status bar
   //
   FUNC14(hwndStatus, SB_SIMPLE, 0, 0L);
   FUNC18(hwndStatus);

   //
   // this is the listbox index of the destination
   //
   dwSelSink = lpds->dwControlData;

   //
   // Are we dropping onto ourselves? (i.e. a selected item in the
   // source listbox OR an unused area of the source listbox)  If
   // so, don't do anything.
   //
   if (hwndHolder == lpds->hwndSource) {
      if ((dwSelSink == (DWORD)-1) || FUNC14(hwndLB, LB_GETSEL, dwSelSink, 0L))
         return TRUE;
   }

   //
   // set the destination, assume move/copy case below (c:\foo\)
   //
   FUNC14(hwndHolder, FS_GETDIRECTORY, FUNC1(szTemp), (LPARAM)szTemp);

   //
   // Are we dropping on a unused portion of some listbox?
   //
   if (dwSelSink == (DWORD)-1) {
      goto NormalMoveCopy;
   }

   //
   // check for drop on a directory
   //
   lpStart = (LPXDTALINK)FUNC7(hwndHolder, GWL_HDTA);

   //
   // If dropping on "No files." or "Access denied." then do normal thing.
   //
   if (!lpStart)
      goto NormalMoveCopy;

   if (FUNC14(hwndLB,
                   LB_GETTEXT,
                   dwSelSink,
                   (LPARAM)&lpxdta) == LB_ERR || !lpxdta) {
      goto NormalMoveCopy;
   }

   FUNC20(szSourceFile, FUNC11(lpxdta));
   dwAttrib = lpxdta->dwAttrs;

   if (dwAttrib & ATTR_DIR) {

      if (bSearch) {

         FUNC20(szTemp, szSourceFile);

      } else {

         //
         // special case the parent
         //
         if (dwAttrib & ATTR_PARENT) {
            FUNC16(szTemp);
            FUNC17(szTemp);
         } else {
            FUNC19(szTemp, szSourceFile);
         }
      }
      goto DirMoveCopy;
   }

   //
   // dropping on a program?
   //
   if (!FUNC8(szSourceFile))
      goto NormalMoveCopy;

   //
   // directory drop on a file? this is a NOP
   //
   if (lpds->wFmt == DOF_DIRECTORY) {
      FUNC4(hwndLB, iSelHighlight, FALSE, FALSE);
      return FALSE;
   }

   //
   // We're dropping a file onto a program.
   // Exec the program using the source file as the parameter.
   //
   // set the directory to that of the program to exec
   //
   FUNC14(hwndHolder, FS_GETDIRECTORY, FUNC1(szTemp), (LPARAM)szTemp);
   FUNC16(szTemp);

   FUNC15(szTemp);

   //
   // We need a fully qualified version of the exe since SheConvertPath
   // doesn't check the current directory if it finds the exe in the path.
   //
   FUNC20(szSourceFileQualified, szTemp);
   FUNC19(szSourceFileQualified, SZ_BACKSLASH);
   FUNC19(szSourceFileQualified, szSourceFile);

   //
   // get the selected file
   //
   pSel = (LPWSTR)FUNC14(lpds->hwndSource, FS_GETSELECTION, 1, 0L);
   pSelNoQuote = (LPWSTR)FUNC14(lpds->hwndSource, FS_GETSELECTION, 1|16, 0L);
   if (!pSel || !pSelNoQuote)
   {
      goto DODone;
   }

   if (FUNC21(pSel) > MAXPATHLEN)   // don't blow up below!
      goto DODone;

   //
   // Checkesc on target exe
   //
   FUNC2(szSourceFile);

   if (bConfirmMouse) {

      FUNC9(hAppInstance, IDS_MOUSECONFIRM, szTitle, FUNC1(szTitle));
      FUNC9(hAppInstance, IDS_EXECMOUSECONFIRM, szTemp, FUNC1(szTemp));

      FUNC22(szMessage, szTemp, szSourceFile, pSel);
      if (FUNC12(hwndFrame, szMessage, szTitle, MB_YESNO | MB_ICONEXCLAMATION) != IDYES)
         goto DODone;
   }


   //
   // create an absolute path to the argument (search window already
   // is absolute)
   //
   if (lpds->hwndSource == hwndSearch) {
      szTemp[0] = CHAR_NULL;
   } else {
      FUNC14(lpds->hwndSource, FS_GETDIRECTORY, FUNC1(szTemp), (LPARAM)szTemp);
   }

   FUNC19(szTemp, pSelNoQuote);     // this is the parameter to the exec

   //
   // put a "." extension on if none found
   //
   if (*FUNC6(szTemp) == 0)
      FUNC19(szTemp, SZ_DOT);

   //
   // Since it's only 1 filename, checkesc it
   //
   FUNC2(szTemp);

   ret = FUNC5(szSourceFileQualified, szTemp, NULL, FALSE, FALSE);

   if (ret)
      FUNC13(hwndFrame, IDS_EXECERRTITLE, (WORD)ret, MB_OK | MB_ICONEXCLAMATION | MB_SYSTEMMODAL);

DODone:
   FUNC4(hwndLB, iSelHighlight, FALSE, FALSE);
   if (pSel)
   {
      FUNC10((HANDLE)pSel);
   }
   if (pSelNoQuote)
   {
      FUNC10((HANDLE)pSelNoQuote);
   }
   return TRUE;

   // szTemp must not be checkesc'd here.

NormalMoveCopy:
   //
   // Make sure that we don't move into same dir.
   //
   if (FUNC7(hwndHolder,
                     GWL_LISTPARMS) == FUNC14(hwndMDIClient,
                                                   WM_MDIGETACTIVE,
                                                   0,
                                                   0L)) {
      return TRUE;
   }

DirMoveCopy:

   //
   // the source filename is in the loword
   //
   pFrom = (LPWSTR)lpds->dwData;

   FUNC0(szTemp);
   FUNC19(szTemp, szStarDotStar);   // put files in this dir

   //
   // again moved here: target is single!
   //
   FUNC2(szTemp);

   ret = FUNC3(pFrom, szTemp, fShowSourceBitmaps);

   FUNC4(hwndLB, iSelHighlight, FALSE, FALSE);

   if (ret)
      return TRUE;

#if 0
   if (!fShowSourceBitmaps)
      SendMessage(lpds->hwndSource, WM_FSC, FSC_REFRESH, 0L);

   //
   // we got dropped on, but if this is a dir we don't need to refresh
   //
   if (!(dwAttrib & ATTR_DIR))
      SendMessage(hwndHolder, WM_FSC, FSC_REFRESH, 0L);
#endif

   return TRUE;
}