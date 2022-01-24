#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ dwData; int /*<<< orphan*/  ptDrop; int /*<<< orphan*/  hwndSink; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ LPTSTR ;
typedef  TYPE_1__* LPDROPSTRUCT ;
typedef  long LPARAM ;
typedef  scalar_t__ HWND ;
typedef  size_t DRIVEIND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FS_GETDIRECTORY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  WM_MDIGETACTIVE ; 
 int /*<<< orphan*/  fShowSourceBitmaps ; 
 scalar_t__ hwndDropChild ; 
 scalar_t__ hwndMDIClient ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__* rgiDrive ; 
 int /*<<< orphan*/  szStarDotStar ; 

VOID
FUNC10(HWND hWnd, LPDROPSTRUCT lpds)
{
    DRIVEIND driveInd;
    TCHAR szPath[MAXPATHLEN * 2];
    LPTSTR pFrom;
    BOOL bIconic;
    HWND hwndChild;

    hwndChild = hwndDropChild ? hwndDropChild :
    (HWND)FUNC8(hwndMDIClient, WM_MDIGETACTIVE, 0, 0L);

    bIconic = FUNC6(hwndChild);

    if (bIconic) {
UseCurDir:
      FUNC8(hwndChild, FS_GETDIRECTORY, FUNC1(szPath), (LPARAM)szPath);
    } else {

      driveInd = FUNC4(lpds->hwndSink, lpds->ptDrop);

      if (driveInd < 0)
          goto UseCurDir;
      // this searches windows in the zorder then asks dos
      // if nothing is found...

      FUNC5((WORD)(rgiDrive[driveInd] + 1), szPath);
    }
    FUNC0(szPath);           // add spec part
    FUNC9(szPath, szStarDotStar);

    pFrom = (LPTSTR)lpds->dwData;

    FUNC2(szPath);
    FUNC3(pFrom, szPath, fShowSourceBitmaps);

    if (!bIconic)
        FUNC7(driveInd, FALSE);
}