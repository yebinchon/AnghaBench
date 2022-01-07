
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_7__ {int nSplit; int sw; TYPE_2__ pt; TYPE_1__ rc; scalar_t__* szDir; int dwAttribs; int dwSort; int dwView; } ;
typedef TYPE_3__ WINDOW ;
typedef scalar_t__ WCHAR ;
typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int AddBackslash (scalar_t__*) ;
 int COUNTOF (scalar_t__*) ;
 scalar_t__ CW_USEDEFAULT ;
 int CheckDirExists (scalar_t__*) ;
 int CreateTreeWindow (scalar_t__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int FALSE ;
 int GetPrivateProfileString (int ,scalar_t__*,int ,scalar_t__*,int ,int ) ;
 int GetSavedWindow (scalar_t__*,TYPE_3__*) ;
 scalar_t__ IsIconic (int ) ;
 int MAXPATHLEN ;
 int SWP_NOACTIVATE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,int ,int ,int ,int ,int) ;
 int ShowWindow (int ,int ) ;
 int StripBackslash (scalar_t__*) ;
 int StripFilespec (scalar_t__*) ;
 int TRUE ;
 int dwNewAttribs ;
 int dwNewSort ;
 int dwNewView ;
 int lstrcat (scalar_t__*,int ) ;
 int lstrcpy (scalar_t__*,scalar_t__*) ;
 int szDirKeyFormat ;
 int szNULL ;
 scalar_t__* szOriginalDirPath ;
 int szSettings ;
 int szStarDotStar ;
 int szTheINIFile ;
 int wsprintf (scalar_t__*,int ,int ) ;

BOOL
CreateSavedWindows()
{
   WCHAR buf[2*MAXPATHLEN+7*7], key[10];
   WINDOW win;




   WCHAR szDir[2*MAXPATHLEN];

   INT nDirNum;
   HWND hwnd;
   INT iNumTrees;





   nDirNum = 1;
   iNumTrees = 0;

   do {
      wsprintf(key, szDirKeyFormat, nDirNum++);

      GetPrivateProfileString(szSettings, key, szNULL, buf, COUNTOF(buf), szTheINIFile);

      if (*buf) {

         GetSavedWindow(buf, &win);





         lstrcpy(szDir, win.szDir);
         StripFilespec(szDir);
         StripBackslash(szDir);

         if (!CheckDirExists(szDir))
            continue;

         dwNewView = win.dwView;
         dwNewSort = win.dwSort;
         dwNewAttribs = win.dwAttribs;

         hwnd = CreateTreeWindow(win.szDir,
                                 win.rc.left,
                                 win.rc.top,
                                 win.rc.right - win.rc.left,
                                 win.rc.bottom - win.rc.top,
                                 win.nSplit);

         if (!hwnd) {
            continue;
         }

         iNumTrees++;




         if (IsIconic(hwnd))
             SetWindowPos(hwnd, ((void*)0), win.pt.x, win.pt.y, 0, 0, SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

         ShowWindow(hwnd, win.sw);
      }

   } while (*buf);




   if (!iNumTrees) {

      lstrcpy(buf, szOriginalDirPath);
      AddBackslash(buf);
      lstrcat(buf, szStarDotStar);




      hwnd = CreateTreeWindow(buf, CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, -1);

      if (!hwnd)
         return FALSE;

      iNumTrees++;
   }

   return TRUE;
}
