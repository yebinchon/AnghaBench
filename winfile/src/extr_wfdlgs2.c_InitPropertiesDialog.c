
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_19__ {int QuadPart; int LowPart; scalar_t__ HighPart; } ;
struct TYPE_14__ {int dwFileAttributes; int ftLastWriteTime; } ;
struct TYPE_18__ {TYPE_1__ fd; } ;
struct TYPE_15__ {int QuadPart; } ;
struct TYPE_17__ {int dwAttrs; int ftLastWriteTime; TYPE_2__ qFileSize; } ;
struct TYPE_16__ {int top; int bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__* LPXDTA ;
typedef scalar_t__ LPTSTR ;
typedef int LPPOINT ;
typedef long LPARAM ;
typedef TYPE_5__ LFNDTA ;
typedef TYPE_6__ LARGE_INTEGER ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef int HMENU ;
typedef scalar_t__ HFONT ;
typedef int HANDLE ;
typedef int FILETIME ;
typedef int DWORD ;
typedef int BOOL ;


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
 int CHAR_NULL ;
 int COUNTOF (int *) ;
 int CheckAttribsDlgButton (scalar_t__,int ,int,int,int) ;
 int ClientToScreen (scalar_t__,int ) ;
 scalar_t__ CreateWindowEx (long,int *,int *,int,scalar_t__,int,scalar_t__,int,scalar_t__,int ,int ,int *) ;
 int ERROR_FILE_NOT_FOUND ;
 int EndDialog (scalar_t__,int) ;
 int FALSE ;
 int FS_CHANGEDISPLAY ;
 int FS_FILE_COMPRESSION ;
 int FS_FILE_ENCRYPTION ;
 int FS_GETDIRECTORY ;
 scalar_t__ FillSimpleVersion (scalar_t__,scalar_t__) ;
 int FillVersionList (scalar_t__) ;
 int FormatError (int,int *,int,int ) ;
 int GWL_STYLE ;
 int GetCompressedFileSize (int *,scalar_t__*) ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int GetDlgItemText (scalar_t__,int ,int *,int) ;
 scalar_t__ GetSelection (int,int *) ;
 scalar_t__ GetTreeFocus (scalar_t__) ;
 scalar_t__ GetVersionInfo (int *,int *) ;
 scalar_t__ GetVolumeInformation (int *,int *,long,int *,int *,int*,int *,long) ;
 int GetWindowRect (scalar_t__,TYPE_3__*) ;
 int GetWindowText (scalar_t__,int *,int) ;
 scalar_t__ HasDirWindow (scalar_t__) ;
 scalar_t__ HasTreeWindow (scalar_t__) ;
 int IDCANCEL ;
 int IDCW_LISTBOX ;
 int IDD_ARCHIVE ;
 int IDD_COMPRESSED ;
 int IDD_CRATIO ;
 int IDD_CRATIOLABEL ;
 int IDD_CSIZE ;
 int IDD_CSIZELABEL ;
 int IDD_DATE ;
 int IDD_DIR ;
 int IDD_ENCRYPTED ;
 int IDD_HELP ;
 int IDD_HIDDEN ;
 int IDD_NAME ;
 int IDD_NAMELABEL ;
 scalar_t__ IDD_NETWORKFIRST ;
 int IDD_READONLY ;
 int IDD_SIZE ;
 int IDD_SIZELABEL ;
 int IDD_SYSTEM ;
 int IDD_TEXT1 ;
 int IDD_TEXT2 ;
 int IDH_GROUP_ATTRIBS ;
 int IDOK ;
 int IDS_ATTRIBERR ;
 int IDS_DIRNAMELABEL ;
 int LARGE_INTEGER_NULL (TYPE_6__) ;
 int LB_GETCOUNT ;
 int LB_GETSEL ;
 int LB_GETTEXT ;
 scalar_t__ LoadString (int ,int ,int *,int) ;
 int LocalFree (int ) ;
 long MAKELPARAM (int ,int ) ;
 int MAXPATHLEN ;
 int MB_ICONSTOP ;
 int MB_OK ;
 int * MemGetFileName (TYPE_4__*) ;
 int MessageBox (int ,int *,int *,int) ;
 int NS_PROPERTYDLG ;
 int OffsetRect (TYPE_3__*,int ,int) ;
 int PostMessage (scalar_t__,int ,int ,long) ;
 int PutDate (int *,int *) ;
 int PutSize (TYPE_6__*,int *) ;
 int PutTime (int *,int *) ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 int SW_HIDE ;
 int ScreenToClient (scalar_t__,int ) ;
 scalar_t__ SendDlgItemMessage (scalar_t__,int ,int ,int ,long) ;
 int SendMessage (scalar_t__,int ,int,long) ;
 int SetDlgItemText (scalar_t__,int ,int *) ;
 int SetWindowDirectory () ;
 int SetWindowLongPtr (scalar_t__,int ,int) ;
 int SetWindowPos (scalar_t__,int *,int ,int ,scalar_t__,scalar_t__,int) ;
 int SetWindowText (scalar_t__,int *) ;
 int ShowWindow (scalar_t__,int ) ;
 int StripBackslash (int *) ;
 int StripFilespec (int *) ;
 int StripPath (int *) ;
 int * TEXT (char*) ;
 int TRUE ;
 int WFFindClose (TYPE_5__*) ;
 int WFFindFirst (TYPE_5__*,int *,int) ;
 int WM_GETFONT ;
 int WM_MDIGETACTIVE ;
 int WM_SETFONT ;
 int WNPS_DIR ;
 int WNPS_FILE ;
 int WNPS_MULT ;
 int WNTYPE_FILE ;
 scalar_t__ WN_SUCCESS ;
 scalar_t__ WNetGetPropertyText (int ,int ,scalar_t__,int *,int,int ) ;
 scalar_t__ WNetStat (int ) ;
 int WS_CHILD ;
 int WS_DISABLED ;
 int WS_GROUP ;
 int WS_TABSTOP ;
 int WS_VISIBLE ;
 int dwContext ;
 int hAppInstance ;
 int hwndFrame ;
 scalar_t__ hwndMDIClient ;
 int lstrcat (int *,int *) ;
 int lstrcpy (int *,int *) ;
 int lstrlen (int *) ;
 int * szMessage ;
 int * szSBytes ;
 int * szTitle ;
 int wsprintf (int *,int *,int) ;

INT
InitPropertiesDialog(
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

   LARGE_INTEGER_NULL(qSize);
   LARGE_INTEGER_NULL(qCSize);




   SetWindowDirectory();

   hwndActive = (HWND)SendMessage(hwndMDIClient, WM_MDIGETACTIVE, 0, 0L);
   hwndDir = HasDirWindow(hwndActive);
   hwndTree = HasTreeWindow(hwndActive);

   if (GetVolumeInformation(((void*)0), ((void*)0), 0L, ((void*)0), ((void*)0), &dwFlags, ((void*)0), 0L))
   {
      bFileCompression = ((dwFlags & FS_FILE_COMPRESSION) == FS_FILE_COMPRESSION);
      bFileEncryption = ((dwFlags & FS_FILE_ENCRYPTION) == FS_FILE_ENCRYPTION);
   }

   iCount = 0;
   dwAttribsOn = 0;
   dwAttribs3State = 0;
   dwAttribsLast = 0xFFFF;

   if (hwndTree && hwndTree == GetTreeFocus(hwndActive)) {

      SendMessage(hwndActive, FS_GETDIRECTORY, COUNTOF(szPath), (LPARAM)szPath);
      StripBackslash(szPath);

      if (!WFFindFirst(&lfndta, szPath, ATTR_ALL | ATTR_DIR)) {
         LoadString(hAppInstance, IDS_ATTRIBERR, szMessage, COUNTOF(szMessage));
         FormatError(FALSE, szMessage, COUNTOF(szMessage), ERROR_FILE_NOT_FOUND);




         MessageBox(hwndFrame, szMessage, szPath, MB_OK | MB_ICONSTOP);
         EndDialog(hDlg, FALSE);
         return 0;
      }
      WFFindClose(&lfndta);

      dwAttribsOn = lfndta.fd.dwFileAttributes;
      ftLastWrite = lfndta.fd.ftLastWriteTime;

      lstrcpy(szName, szPath);

      goto FullPath;
   }

   if (hwndDir) {
      hwndLB = GetDlgItem(hwndDir, IDCW_LISTBOX);
      hwndView = hwndDir;
   } else {
      hwndLB = GetDlgItem(hwndActive, IDCW_LISTBOX);
      hwndView = hwndActive;
   }

   iMac = SendMessage(hwndLB, LB_GETCOUNT, 0, 0L);

   szPath[0] = CHAR_NULL;
   szName[0] = CHAR_NULL;

   for (i = 0; i < iMac; i++) {

      if (SendMessage(hwndLB, LB_GETSEL, i, 0L)) {




         SendMessage(hwndLB, LB_GETTEXT, i, (LPARAM)&lpxdta);
         dwAttrib = lpxdta->dwAttrs;




         if (dwAttrib & ATTR_DIR && dwAttrib & ATTR_PARENT)
            continue;

         qSize.QuadPart = qSize.QuadPart + (lpxdta->qFileSize).QuadPart;

         if (!szName[0]) {

            ftLastWrite = lpxdta->ftLastWriteTime;
            lstrcpy(szName, MemGetFileName(lpxdta));
         }

         dwAttribsOn |= dwAttrib;

         if (dwAttribsLast == 0xFFFF) {




            dwAttribsLast = dwAttrib;

         } else {




            dwAttribs3State |= (dwAttrib ^ dwAttribsLast);
         }

         iCount++;
      }
   }

   GetDlgItemText(hDlg, IDD_TEXT1, szTemp, COUNTOF(szTemp));
   wsprintf(szBuf, szTemp, iCount);
   SetDlgItemText(hDlg, IDD_TEXT1, szBuf);

   GetDlgItemText(hDlg, IDD_TEXT2, szTemp, COUNTOF(szTemp));
   PutSize(&qSize, szNum);
   wsprintf(szBuf, szTemp, szNum);
   SetDlgItemText(hDlg, IDD_TEXT2, szBuf);

   if (iCount == 1)
   {
      if (hwndDir)
      {
         SendMessage(hwndDir, FS_GETDIRECTORY, COUNTOF(szPath), (LPARAM)szPath);
      }
      else
      {
         lstrcpy(szPath, szName);
FullPath:
         StripPath(szName);
         StripFilespec(szPath);
      }

      StripBackslash(szPath);

      GetWindowText(hDlg, szTitle, COUNTOF(szTitle));
      wsprintf(szTemp, szTitle, szName);
      SetWindowText(hDlg, szTemp);

      SetDlgItemText(hDlg, IDD_NAME, szName);
      SetDlgItemText(hDlg, IDD_DIR, szPath);

      if (dwAttribsOn & ATTR_DIR)
      {



         if (LoadString(hAppInstance, IDS_DIRNAMELABEL, szTemp, COUNTOF(szTemp)))
            SetDlgItemText(hDlg, IDD_NAMELABEL, szTemp);

         ShowWindow(GetDlgItem(hDlg, IDD_SIZELABEL), SW_HIDE);
         ShowWindow(GetDlgItem(hDlg, IDD_SIZE), SW_HIDE);

         ShowWindow(GetDlgItem(hDlg, IDD_CSIZELABEL), SW_HIDE);
         ShowWindow(GetDlgItem(hDlg, IDD_CSIZE), SW_HIDE);

         ShowWindow(GetDlgItem(hDlg, IDD_CRATIOLABEL), SW_HIDE);
         ShowWindow(GetDlgItem(hDlg, IDD_CRATIO), SW_HIDE);
      }
      else
      {
         if ((bFileCompression) && (dwAttribsOn & ATTR_COMPRESSED))
         {
            qCSize.LowPart = GetCompressedFileSize(szName, &(qCSize.HighPart));
            PutSize(&qCSize, szNum);
            wsprintf(szTemp, szSBytes, szNum);
            SetDlgItemText(hDlg, IDD_CSIZE, szTemp);

            if (qSize.QuadPart != 0)
            {



               qCSize.QuadPart =
                   (qCSize.QuadPart * 100) /
                   qSize.QuadPart;

               if (qCSize.HighPart || (qCSize.LowPart > 100))
               {



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



               qCSize.LowPart = 0;
               qCSize.HighPart = 0;
            }
            PutSize(&qCSize, szNum);
            wsprintf(szTemp, TEXT("%s%%"), szNum);
            SetDlgItemText(hDlg, IDD_CRATIO, szTemp);
         }
         else
         {
            ShowWindow(GetDlgItem(hDlg, IDD_CSIZELABEL), SW_HIDE);
            ShowWindow(GetDlgItem(hDlg, IDD_CSIZE), SW_HIDE);
            ShowWindow(GetDlgItem(hDlg, IDD_CRATIOLABEL), SW_HIDE);
            ShowWindow(GetDlgItem(hDlg, IDD_CRATIO), SW_HIDE);
         }

         PostMessage(hDlg, FS_CHANGEDISPLAY, 0, 0L);


         lpszBuf = GetVersionInfo(szPath, szName);

         if (FillSimpleVersion(hDlg, lpszBuf))
            FillVersionList(hDlg);
      }

      if (!bFileCompression)
      {
         ShowWindow(GetDlgItem(hDlg, IDD_COMPRESSED), SW_HIDE);
      }

      if (!bFileEncryption)
      {
         ShowWindow(GetDlgItem(hDlg, IDD_ENCRYPTED), SW_HIDE);
      }

      PutSize(&qSize, szNum);
      wsprintf(szTemp, szSBytes, szNum);
      SetDlgItemText(hDlg, IDD_SIZE, szTemp);

      PutDate(&ftLastWrite, szTemp);
      lstrcat(szTemp, TEXT("  "));
      PutTime(&ftLastWrite, szTemp + lstrlen(szTemp));

      SetDlgItemText(hDlg, IDD_DATE, szTemp);
   }
   else
   {
      dwContext = IDH_GROUP_ATTRIBS;

      if (!bFileCompression)
      {
          ShowWindow(GetDlgItem(hDlg, IDD_COMPRESSED), SW_HIDE);
      }

      if (!bFileEncryption)
      {
          ShowWindow(GetDlgItem(hDlg, IDD_ENCRYPTED), SW_HIDE);
      }
   }




   if (WNetStat(NS_PROPERTYDLG)) {
      GetWindowRect(GetDlgItem(hDlg,IDOK), &rcT);
      GetWindowRect(GetDlgItem(hDlg,IDCANCEL), &rc);
      dyButton = rc.top - rcT.top;

      GetWindowRect(GetDlgItem(hDlg,IDD_HELP), &rc);
      ScreenToClient(hDlg,(LPPOINT)&rc.left);
      ScreenToClient(hDlg,(LPPOINT)&rc.right);

      p = GetSelection(4, ((void*)0));
      if (p) {

         for (i = 0; i < 6; i++) {

            if (iCount > 1)
               nType = WNPS_MULT;
            else if (dwAttribsOn & ATTR_DIR)
               nType = WNPS_DIR;
            else
               nType = WNPS_FILE;

            if (WNetGetPropertyText((WORD)i, (WORD)nType, p, szTemp, 30, WNTYPE_FILE) != WN_SUCCESS)
               break;

            if (!szTemp[0])
               break;

            OffsetRect(&rc,0,dyButton);
            hwnd = CreateWindowEx(0L, TEXT("button"), szTemp,
               WS_VISIBLE|WS_CHILD|WS_TABSTOP|BS_PUSHBUTTON,
               rc.left, rc.top,
               rc.right - rc.left, rc.bottom-rc.top,
               hDlg, (HMENU)(i + IDD_NETWORKFIRST), hAppInstance, ((void*)0));

            if (hwnd) {
               hFont = (HFONT)SendDlgItemMessage(hDlg, IDOK, WM_GETFONT, 0, 0L);
               SendMessage(hwnd, WM_SETFONT, (WPARAM)hFont, MAKELPARAM(TRUE, 0));
            }
         }

         LocalFree((HANDLE)p);

         ClientToScreen(hDlg,(LPPOINT)&rc.left);
         ClientToScreen(hDlg,(LPPOINT)&rc.right);
         GetWindowRect(hDlg,&rcT);
         rc.bottom += dyButton;
         if (rcT.bottom <= rc.bottom) {
            SetWindowPos(hDlg,((void*)0),0,0,rcT.right-rcT.left,
            rc.bottom - rcT.top, SWP_NOMOVE|SWP_NOZORDER);
         }
      }
   }




   if (ATTR_READONLY & dwAttribs3State)
   {
      SetWindowLongPtr( GetDlgItem(hDlg, IDD_READONLY),
                     GWL_STYLE,
                     WS_VISIBLE | WS_GROUP | WS_TABSTOP | BS_AUTO3STATE | WS_CHILD );
   }
   if (ATTR_HIDDEN & dwAttribs3State)
   {
      SetWindowLongPtr( GetDlgItem(hDlg, IDD_HIDDEN),
                     GWL_STYLE,
                     WS_VISIBLE | BS_AUTO3STATE | WS_CHILD);
   }
   if (ATTR_ARCHIVE & dwAttribs3State)
   {
      SetWindowLongPtr( GetDlgItem(hDlg, IDD_ARCHIVE),
                     GWL_STYLE,
                     WS_VISIBLE | BS_AUTO3STATE | WS_CHILD);
   }
   if (ATTR_SYSTEM & dwAttribs3State)
   {
      SetWindowLongPtr( GetDlgItem(hDlg, IDD_SYSTEM),
                     GWL_STYLE,
                     WS_VISIBLE | BS_AUTO3STATE | WS_CHILD);
   }
   if (ATTR_COMPRESSED & dwAttribs3State)
   {
      SetWindowLongPtr( GetDlgItem(hDlg, IDD_COMPRESSED),
                     GWL_STYLE,
                     WS_VISIBLE | BS_AUTO3STATE | WS_CHILD);
   }
   if (ATTR_ENCRYPTED & dwAttribs3State)
   {
      SetWindowLongPtr( GetDlgItem(hDlg, IDD_ENCRYPTED),
                     GWL_STYLE,
                     WS_VISIBLE | BS_AUTO3STATE | WS_CHILD | WS_DISABLED);
   }

   CheckAttribsDlgButton(hDlg, IDD_READONLY, ATTR_READONLY, dwAttribs3State, dwAttribsOn);
   CheckAttribsDlgButton(hDlg, IDD_HIDDEN, ATTR_HIDDEN, dwAttribs3State, dwAttribsOn);
   CheckAttribsDlgButton(hDlg, IDD_ARCHIVE, ATTR_ARCHIVE, dwAttribs3State, dwAttribsOn);
   CheckAttribsDlgButton(hDlg, IDD_SYSTEM, ATTR_SYSTEM, dwAttribs3State, dwAttribsOn);
   CheckAttribsDlgButton(hDlg, IDD_COMPRESSED, ATTR_COMPRESSED, dwAttribs3State, dwAttribsOn);
   CheckAttribsDlgButton(hDlg, IDD_ENCRYPTED, ATTR_ENCRYPTED, dwAttribs3State, dwAttribsOn);

   return nType;
}
