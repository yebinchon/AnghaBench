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
struct TYPE_3__ {int m_iItemSelected; int /*<<< orphan*/ * m_hWnd; } ;
typedef  TYPE_1__ WF_IDropTarget ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PDNODE ;
typedef  int /*<<< orphan*/  LPXDTA ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ LPTSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HLOCAL ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ DROPEFFECT_COPY ; 
 scalar_t__ DROPEFFECT_MOVE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FS_GETDIRECTORY ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDCW_LISTBOX ; 
 int /*<<< orphan*/  IDCW_TREELISTBOX ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szStarDotStar ; 

void FUNC13(WF_IDropTarget *This, IDataObject *pDataObject, DWORD dwEffect)
{
	// construct a FORMATETC object
	HWND hwndLB;
	BOOL fTree;
	LPWSTR szFiles = NULL;
	WCHAR     szDest[MAXPATHLEN];

	hwndLB = FUNC4(This->m_hWnd, IDCW_LISTBOX);
	fTree = FALSE;
	if (hwndLB == NULL)
	{
		hwndLB = FUNC4(This->m_hWnd, IDCW_TREELISTBOX);
		fTree = TRUE;

		if (hwndLB == NULL)
			return;
	}

	// if item selected, add path
	if (fTree)
	{
	    PDNODE pNode;
		
		// odd
		if (This->m_iItemSelected == -1)
			return;

		if (FUNC10(hwndLB, LB_GETTEXT, This->m_iItemSelected, (LPARAM)&pNode) == LB_ERR)
			return;

		FUNC5(pNode, szDest);
	}
	else
	{
		LPXDTA    lpxdta;

		FUNC10(This->m_hWnd, FS_GETDIRECTORY, FUNC1(szDest), (LPARAM)szDest);

		if (This->m_iItemSelected != -1)
		{
			FUNC10(hwndLB, LB_GETTEXT, This->m_iItemSelected,
				(LPARAM)(LPTSTR)&lpxdta);
		
			FUNC0(szDest);
			FUNC12(szDest, FUNC7(lpxdta));
		}
	}

    FUNC0(szDest);
    FUNC12(szDest, szStarDotStar);   // put files in this dir

    FUNC2(szDest);

	// See if the dataobject contains any TEXT stored as a HGLOBAL
	if ((szFiles = FUNC9(pDataObject)) == NULL)
	{
		szFiles = FUNC8(pDataObject);
		dwEffect = DROPEFFECT_MOVE; 
	}

	if (szFiles != NULL)
	{
		FUNC11(This->m_hWnd);

		FUNC3(szFiles, szDest, dwEffect == DROPEFFECT_COPY);

		FUNC6((HLOCAL)szFiles);
	}
}