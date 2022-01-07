
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ dwData; int ptDrop; int hwndSink; } ;
typedef int TCHAR ;
typedef scalar_t__ LPTSTR ;
typedef TYPE_1__* LPDROPSTRUCT ;
typedef long LPARAM ;
typedef scalar_t__ HWND ;
typedef size_t DRIVEIND ;
typedef scalar_t__ BOOL ;


 int AddBackslash (int *) ;
 int COUNTOF (int *) ;
 int CheckEsc (int *) ;
 int DMMoveCopyHelper (scalar_t__,int *,int ) ;
 size_t DriveFromPoint (int ,int ) ;
 int FALSE ;
 int FS_GETDIRECTORY ;
 int GetSelectedDirectory (int ,int *) ;
 scalar_t__ IsIconic (scalar_t__) ;
 int MAXPATHLEN ;
 int RectDrive (size_t,int ) ;
 scalar_t__ SendMessage (scalar_t__,int ,int ,long) ;
 int WM_MDIGETACTIVE ;
 int fShowSourceBitmaps ;
 scalar_t__ hwndDropChild ;
 scalar_t__ hwndMDIClient ;
 int lstrcat (int *,int ) ;
 scalar_t__* rgiDrive ;
 int szStarDotStar ;

VOID
DrivesDropObject(HWND hWnd, LPDROPSTRUCT lpds)
{
    DRIVEIND driveInd;
    TCHAR szPath[MAXPATHLEN * 2];
    LPTSTR pFrom;
    BOOL bIconic;
    HWND hwndChild;

    hwndChild = hwndDropChild ? hwndDropChild :
    (HWND)SendMessage(hwndMDIClient, WM_MDIGETACTIVE, 0, 0L);

    bIconic = IsIconic(hwndChild);

    if (bIconic) {
UseCurDir:
      SendMessage(hwndChild, FS_GETDIRECTORY, COUNTOF(szPath), (LPARAM)szPath);
    } else {

      driveInd = DriveFromPoint(lpds->hwndSink, lpds->ptDrop);

      if (driveInd < 0)
          goto UseCurDir;



      GetSelectedDirectory((WORD)(rgiDrive[driveInd] + 1), szPath);
    }
    AddBackslash(szPath);
    lstrcat(szPath, szStarDotStar);

    pFrom = (LPTSTR)lpds->dwData;

    CheckEsc(szPath);
    DMMoveCopyHelper(pFrom, szPath, fShowSourceBitmaps);

    if (!bIconic)
        RectDrive(driveInd, FALSE);
}
