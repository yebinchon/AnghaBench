#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int WPARAM ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_19__ {int QuadPart; int LowPart; scalar_t__ HighPart; } ;
struct TYPE_14__ {int dwFileAttributes; int /*<<< orphan*/  ftLastWriteTime; } ;
struct TYPE_18__ {TYPE_1__ fd; } ;
struct TYPE_15__ {int QuadPart; } ;
struct TYPE_17__ {int dwAttrs; int /*<<< orphan*/  ftLastWriteTime; TYPE_2__ qFileSize; } ;
struct TYPE_16__ {int top; int bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_4__* LPXDTA ;
typedef  scalar_t__ LPTSTR ;
typedef  int /*<<< orphan*/  LPPOINT ;
typedef  long LPARAM ;
typedef  TYPE_5__ LFNDTA ;
typedef  TYPE_6__ LARGE_INTEGER ;
typedef  int INT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ATTR_ALL ; 
 int ATTR_ARCHIVE ; 
 int ATTR_COMPRESSED ; 
 int ATTR_DIR ; 
 int ATTR_ENCRYPTED ; 
 int ATTR_HIDDEN ; 
 int ATTR_PARENT ; 
 int ATTR_READONLY ; 
 int ATTR_SYSTEM ; 
 int BS_AUTO3STATE ; 
 int BS_PUSHBUTTON ; 
 int /*<<< orphan*/  CHAR_NULL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__,int,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FS_CHANGEDISPLAY ; 
 int FS_FILE_COMPRESSION ; 
 int FS_FILE_ENCRYPTION ; 
 int /*<<< orphan*/  FS_GETDIRECTORY ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  IDCANCEL ; 
 int /*<<< orphan*/  IDCW_LISTBOX ; 
 int /*<<< orphan*/  IDD_ARCHIVE ; 
 int /*<<< orphan*/  IDD_COMPRESSED ; 
 int /*<<< orphan*/  IDD_CRATIO ; 
 int /*<<< orphan*/  IDD_CRATIOLABEL ; 
 int /*<<< orphan*/  IDD_CSIZE ; 
 int /*<<< orphan*/  IDD_CSIZELABEL ; 
 int /*<<< orphan*/  IDD_DATE ; 
 int /*<<< orphan*/  IDD_DIR ; 
 int /*<<< orphan*/  IDD_ENCRYPTED ; 
 int /*<<< orphan*/  IDD_HELP ; 
 int /*<<< orphan*/  IDD_HIDDEN ; 
 int /*<<< orphan*/  IDD_NAME ; 
 int /*<<< orphan*/  IDD_NAMELABEL ; 
 scalar_t__ IDD_NETWORKFIRST ; 
 int /*<<< orphan*/  IDD_READONLY ; 
 int /*<<< orphan*/  IDD_SIZE ; 
 int /*<<< orphan*/  IDD_SIZELABEL ; 
 int /*<<< orphan*/  IDD_SYSTEM ; 
 int /*<<< orphan*/  IDD_TEXT1 ; 
 int /*<<< orphan*/  IDD_TEXT2 ; 
 int /*<<< orphan*/  IDH_GROUP_ATTRIBS ; 
 int /*<<< orphan*/  IDOK ; 
 int /*<<< orphan*/  IDS_ATTRIBERR ; 
 int /*<<< orphan*/  IDS_DIRNAMELABEL ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__) ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 int /*<<< orphan*/  LB_GETSEL ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 long FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAXPATHLEN ; 
 int MB_ICONSTOP ; 
 int MB_OK ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NS_PROPERTYDLG ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int FUNC32 (scalar_t__,int /*<<< orphan*/ ,int,long) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC37 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC42 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC43 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  WM_GETFONT ; 
 int /*<<< orphan*/  WM_MDIGETACTIVE ; 
 int /*<<< orphan*/  WM_SETFONT ; 
 int WNPS_DIR ; 
 int WNPS_FILE ; 
 int WNPS_MULT ; 
 int /*<<< orphan*/  WNTYPE_FILE ; 
 scalar_t__ WN_SUCCESS ; 
 scalar_t__ FUNC45 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC46 (int /*<<< orphan*/ ) ; 
 int WS_CHILD ; 
 int WS_DISABLED ; 
 int WS_GROUP ; 
 int WS_TABSTOP ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  dwContext ; 
 int /*<<< orphan*/  hAppInstance ; 
 int /*<<< orphan*/  hwndFrame ; 
 scalar_t__ hwndMDIClient ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC49 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * szMessage ; 
 int /*<<< orphan*/ * szSBytes ; 
 int /*<<< orphan*/ * szTitle ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

INT
FUNC51(
   HWND hDlg)
{
   HWND hwndLB, hwndActive, hwndTree;
   LPXDTA lpxdta;
   DWORD dwAttribsOn, dwAttribs3State, dwAttribsLast;
   HWND hwndDir, hwnd, hwndView;
   WCHAR szName[MAXPATHLEN];
   WCHAR szPath[MAXPATHLEN];
   WCHAR szTemp[MAXPATHLEN + 20];
   WCHAR szBuf[MAXPATHLEN];
   WCHAR szNum[MAXPATHLEN];
   INT i, iMac, iCount, dyButton;
   RECT rc, rcT;
   DWORD dwAttrib;
   FILETIME ftLastWrite;
   LFNDTA lfndta;
   LPTSTR p;
   HFONT hFont;
   INT nType = 0;
   DWORD dwFlags;
   BOOL bFileCompression = FALSE;
   BOOL bFileEncryption = FALSE;

   LPTSTR lpszBuf;
   LARGE_INTEGER qSize, qCSize;

   FUNC19(qSize);
   FUNC19(qCSize);

   //
   // this is needed for relative findfirst calls below
   //
   FUNC34();

   hwndActive = (HWND)FUNC32(hwndMDIClient, WM_MDIGETACTIVE, 0, 0L);
   hwndDir = FUNC17(hwndActive);
   hwndTree = FUNC18(hwndActive);

   if (FUNC14(NULL, NULL, 0L, NULL, NULL, &dwFlags, NULL, 0L))
   {
      bFileCompression = ((dwFlags & FS_FILE_COMPRESSION) == FS_FILE_COMPRESSION);
      bFileEncryption = ((dwFlags & FS_FILE_ENCRYPTION) == FS_FILE_ENCRYPTION);
   }

   iCount = 0;
   dwAttribsOn = 0;                // all bits to check
   dwAttribs3State = 0;            // all bits to 3 state
   dwAttribsLast = 0xFFFF;         // previous bits

   if (hwndTree && hwndTree == FUNC12(hwndActive)) {

      FUNC32(hwndActive, FS_GETDIRECTORY, FUNC0(szPath), (LPARAM)szPath);
      FUNC39(szPath);

      if (!FUNC44(&lfndta, szPath, ATTR_ALL | ATTR_DIR)) {
         FUNC20(hAppInstance, IDS_ATTRIBERR, szMessage, FUNC0(szMessage));
         FUNC7(FALSE, szMessage, FUNC0(szMessage), ERROR_FILE_NOT_FOUND);

         //
         // BUGBUG: szPath should be set to "Properties for %s"!
         //
         FUNC24(hwndFrame, szMessage, szPath, MB_OK | MB_ICONSTOP);
         FUNC4(hDlg, FALSE);
         return 0;
      }
      FUNC43(&lfndta);

      dwAttribsOn = lfndta.fd.dwFileAttributes;
      ftLastWrite = lfndta.fd.ftLastWriteTime;

      FUNC48(szName, szPath);

      goto FullPath;
   }

   if (hwndDir) {
      hwndLB = FUNC9(hwndDir, IDCW_LISTBOX);
      hwndView = hwndDir;
   } else {
      hwndLB = FUNC9(hwndActive, IDCW_LISTBOX);
      hwndView = hwndActive;
   }

   iMac = FUNC32(hwndLB, LB_GETCOUNT, 0, 0L);

   szPath[0] = CHAR_NULL;
   szName[0] = CHAR_NULL;

   for (i = 0; i < iMac; i++) {

      if (FUNC32(hwndLB, LB_GETSEL, i, 0L)) {

         //
         // get info from either dir or search window
         //
         FUNC32(hwndLB, LB_GETTEXT, i, (LPARAM)&lpxdta);
         dwAttrib = lpxdta->dwAttrs;

         //
         // Check that this is not the .. entry
         //
         if (dwAttrib & ATTR_DIR && dwAttrib & ATTR_PARENT)
            continue;

         qSize.QuadPart = qSize.QuadPart + (lpxdta->qFileSize).QuadPart;

         if (!szName[0]) {

            ftLastWrite = lpxdta->ftLastWriteTime;
            FUNC48(szName, FUNC23(lpxdta));
         }

         dwAttribsOn |= dwAttrib;

         if (dwAttribsLast == 0xFFFF) {

            //
            // save the previous bits for future compares
            //
            dwAttribsLast = dwAttrib;

         } else {

            //
            // remember all bits that don't compare to last bits
            //
            dwAttribs3State |= (dwAttrib ^ dwAttribsLast);
         }

         iCount++;
      }
   }

   FUNC10(hDlg, IDD_TEXT1, szTemp, FUNC0(szTemp));
   FUNC50(szBuf, szTemp, iCount);
   FUNC33(hDlg, IDD_TEXT1, szBuf);

   FUNC10(hDlg, IDD_TEXT2, szTemp, FUNC0(szTemp));
   FUNC28(&qSize, szNum);
   FUNC50(szBuf, szTemp, szNum);
   FUNC33(hDlg, IDD_TEXT2, szBuf);

   if (iCount == 1)
   {
      if (hwndDir)
      {
         FUNC32(hwndDir, FS_GETDIRECTORY, FUNC0(szPath), (LPARAM)szPath);
      }
      else
      {
         FUNC48(szPath, szName);
FullPath:
         FUNC41(szName);
         FUNC40(szPath);
      }

      FUNC39(szPath);

      FUNC16(hDlg, szTitle, FUNC0(szTitle));
      FUNC50(szTemp, szTitle, szName);
      FUNC37(hDlg, szTemp);

      FUNC33(hDlg, IDD_NAME, szName);
      FUNC33(hDlg, IDD_DIR, szPath);

      if (dwAttribsOn & ATTR_DIR)
      {
         //
         //  Hide size, ratio, and version info.
         //
         if (FUNC20(hAppInstance, IDS_DIRNAMELABEL, szTemp, FUNC0(szTemp)))
            FUNC33(hDlg, IDD_NAMELABEL, szTemp);

         FUNC38(FUNC9(hDlg, IDD_SIZELABEL), SW_HIDE);
         FUNC38(FUNC9(hDlg, IDD_SIZE), SW_HIDE);

         FUNC38(FUNC9(hDlg, IDD_CSIZELABEL), SW_HIDE);
         FUNC38(FUNC9(hDlg, IDD_CSIZE), SW_HIDE);

         FUNC38(FUNC9(hDlg, IDD_CRATIOLABEL), SW_HIDE);
         FUNC38(FUNC9(hDlg, IDD_CRATIO), SW_HIDE);
      }
      else
      {
         if ((bFileCompression) && (dwAttribsOn & ATTR_COMPRESSED))
         {
            qCSize.LowPart = FUNC8(szName, &(qCSize.HighPart));
            FUNC28(&qCSize, szNum);
            FUNC50(szTemp, szSBytes, szNum);
            FUNC33(hDlg, IDD_CSIZE, szTemp);

            if (qSize.QuadPart != 0)
            {
               //
               //  Ratio = 100 - ((CompressSize * 100) / FileSize)
               //
               qCSize.QuadPart =
                   (qCSize.QuadPart * 100) /
                   qSize.QuadPart;

               if (qCSize.HighPart || (qCSize.LowPart > 100))
               {
                   //
                   //  Ratio = 100%
                   //
                   qCSize.LowPart = 100;
                   qCSize.HighPart = 0;
               }
               else
               {
                   qCSize.LowPart = 100 - qCSize.LowPart;
               }
            }
            else
            {
               //
               //  Ratio = 0%
               //
               qCSize.LowPart = 0;
               qCSize.HighPart = 0;
            }
            FUNC28(&qCSize, szNum);
            FUNC50(szTemp, FUNC42("%s%%"), szNum);
            FUNC33(hDlg, IDD_CRATIO, szTemp);
         }
         else
         {
            FUNC38(FUNC9(hDlg, IDD_CSIZELABEL), SW_HIDE);
            FUNC38(FUNC9(hDlg, IDD_CSIZE), SW_HIDE);
            FUNC38(FUNC9(hDlg, IDD_CRATIOLABEL), SW_HIDE);
            FUNC38(FUNC9(hDlg, IDD_CRATIO), SW_HIDE);
         }

         FUNC26(hDlg, FS_CHANGEDISPLAY, 0, 0L);

         // changes szPath
         lpszBuf = FUNC13(szPath, szName);

         if (FUNC5(hDlg, lpszBuf))
            FUNC6(hDlg);
      }

      if (!bFileCompression)
      {
         FUNC38(FUNC9(hDlg, IDD_COMPRESSED), SW_HIDE);
      }

      if (!bFileEncryption)
      {
         FUNC38(FUNC9(hDlg, IDD_ENCRYPTED), SW_HIDE);
      }

      FUNC28(&qSize, szNum);
      FUNC50(szTemp, szSBytes, szNum);
      FUNC33(hDlg, IDD_SIZE, szTemp);

      FUNC27(&ftLastWrite, szTemp);
      FUNC47(szTemp, FUNC42("  "));
      FUNC29(&ftLastWrite, szTemp + FUNC49(szTemp));

      FUNC33(hDlg, IDD_DATE, szTemp);
   }
   else
   {
      dwContext = IDH_GROUP_ATTRIBS;
      
      if (!bFileCompression)
      {
          FUNC38(FUNC9(hDlg, IDD_COMPRESSED), SW_HIDE);
      }

      if (!bFileEncryption)
      {
          FUNC38(FUNC9(hDlg, IDD_ENCRYPTED), SW_HIDE);
      }
   }

   //
   // add the network specific property buttons
   //
   if (FUNC46(NS_PROPERTYDLG)) {
      FUNC15(FUNC9(hDlg,IDOK), &rcT);
      FUNC15(FUNC9(hDlg,IDCANCEL), &rc);
      dyButton = rc.top - rcT.top;

      FUNC15(FUNC9(hDlg,IDD_HELP), &rc);
      FUNC30(hDlg,(LPPOINT)&rc.left);
      FUNC30(hDlg,(LPPOINT)&rc.right);

      p = FUNC11(4, NULL);
      if (p) {

         for (i = 0; i < 6; i++) {

            if (iCount > 1)
               nType = WNPS_MULT;
            else if (dwAttribsOn & ATTR_DIR)
               nType = WNPS_DIR;
            else
               nType = WNPS_FILE;

            if (FUNC45((WORD)i, (WORD)nType, p, szTemp, 30, WNTYPE_FILE) != WN_SUCCESS)
               break;

            if (!szTemp[0])
               break;

            FUNC25(&rc,0,dyButton);
            hwnd = FUNC3(0L, FUNC42("button"), szTemp,
               WS_VISIBLE|WS_CHILD|WS_TABSTOP|BS_PUSHBUTTON,
               rc.left, rc.top,
               rc.right - rc.left, rc.bottom-rc.top,
               hDlg, (HMENU)(i + IDD_NETWORKFIRST), hAppInstance, NULL);

            if (hwnd) {
               hFont = (HFONT)FUNC31(hDlg, IDOK, WM_GETFONT, 0, 0L);
               FUNC32(hwnd, WM_SETFONT, (WPARAM)hFont, FUNC22(TRUE, 0));
            }
         }

         FUNC21((HANDLE)p);

         FUNC2(hDlg,(LPPOINT)&rc.left);
         FUNC2(hDlg,(LPPOINT)&rc.right);
         FUNC15(hDlg,&rcT);
         rc.bottom += dyButton;
         if (rcT.bottom <= rc.bottom) {
            FUNC36(hDlg,NULL,0,0,rcT.right-rcT.left,
            rc.bottom - rcT.top, SWP_NOMOVE|SWP_NOZORDER);
         }
      }
   }

   //
   // change those that don't need to be 3state to regular
   //
   if (ATTR_READONLY & dwAttribs3State)
   {
      FUNC35( FUNC9(hDlg, IDD_READONLY),
                     GWL_STYLE,
                     WS_VISIBLE | WS_GROUP | WS_TABSTOP | BS_AUTO3STATE | WS_CHILD );
   }
   if (ATTR_HIDDEN & dwAttribs3State)
   {
      FUNC35( FUNC9(hDlg, IDD_HIDDEN),
                     GWL_STYLE,
                     WS_VISIBLE | BS_AUTO3STATE | WS_CHILD);
   }
   if (ATTR_ARCHIVE & dwAttribs3State)
   {
      FUNC35( FUNC9(hDlg, IDD_ARCHIVE),
                     GWL_STYLE,
                     WS_VISIBLE | BS_AUTO3STATE | WS_CHILD);
   }
   if (ATTR_SYSTEM & dwAttribs3State)
   {
      FUNC35( FUNC9(hDlg, IDD_SYSTEM),
                     GWL_STYLE,
                     WS_VISIBLE | BS_AUTO3STATE | WS_CHILD);
   }
   if (ATTR_COMPRESSED & dwAttribs3State)
   {
      FUNC35( FUNC9(hDlg, IDD_COMPRESSED),
                     GWL_STYLE,
                     WS_VISIBLE | BS_AUTO3STATE | WS_CHILD);
   }
   if (ATTR_ENCRYPTED & dwAttribs3State)
   {
      FUNC35( FUNC9(hDlg, IDD_ENCRYPTED),
                     GWL_STYLE,
                     WS_VISIBLE | BS_AUTO3STATE | WS_CHILD | WS_DISABLED);
   }

   FUNC1(hDlg, IDD_READONLY,   ATTR_READONLY, dwAttribs3State, dwAttribsOn);
   FUNC1(hDlg, IDD_HIDDEN,     ATTR_HIDDEN, dwAttribs3State, dwAttribsOn);
   FUNC1(hDlg, IDD_ARCHIVE,    ATTR_ARCHIVE, dwAttribs3State, dwAttribsOn);
   FUNC1(hDlg, IDD_SYSTEM,     ATTR_SYSTEM, dwAttribs3State, dwAttribsOn);
   FUNC1(hDlg, IDD_COMPRESSED, ATTR_COMPRESSED, dwAttribs3State, dwAttribsOn);
   FUNC1(hDlg, IDD_ENCRYPTED,  ATTR_ENCRYPTED, dwAttribs3State, dwAttribsOn);

   return nType;
}