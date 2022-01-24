#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_2__ {int pFiles; int /*<<< orphan*/  fWide; int /*<<< orphan*/  fNC; int /*<<< orphan*/  pt; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  TYPE_1__* LPDROPFILES ;
typedef  scalar_t__ LPBYTE ;
typedef  int /*<<< orphan*/ * HDROP ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  DROPFILES ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int GMEM_ZEROINIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

HDROP FUNC8(POINT pt, BOOL fNC, LPTSTR pszFiles)
{
    HANDLE hDrop;
    LPBYTE lpList;
    UINT cbList;
	LPTSTR szSrc;

    LPDROPFILES lpdfs;
    TCHAR szFile[MAXPATHLEN];

	cbList = sizeof(DROPFILES) + sizeof(TCHAR);

	szSrc = pszFiles;
    while ((szSrc = FUNC1(szSrc, szFile, FUNC0(szFile)))) 
	{
        FUNC5(szFile);

		cbList += (FUNC7(szFile) + 1)*sizeof(TCHAR);
	}

    hDrop = FUNC2(GMEM_DDESHARE|GMEM_MOVEABLE|GMEM_ZEROINIT, cbList);
    if (!hDrop)
        return NULL;

    lpdfs = (LPDROPFILES)FUNC3(hDrop);

    lpdfs->pFiles = sizeof(DROPFILES);
	lpdfs->pt = pt;
	lpdfs->fNC = fNC;
    lpdfs->fWide = TRUE;

	lpList = (LPBYTE)lpdfs + sizeof(DROPFILES);
	szSrc = pszFiles;

    while ((szSrc = FUNC1(szSrc, szFile, FUNC0(szFile)))) {

       FUNC5(szFile);

       FUNC6((LPTSTR)lpList, szFile);

       lpList += (FUNC7(szFile) + 1)*sizeof(TCHAR);
    }

	FUNC4(hDrop);

	return hDrop;
}