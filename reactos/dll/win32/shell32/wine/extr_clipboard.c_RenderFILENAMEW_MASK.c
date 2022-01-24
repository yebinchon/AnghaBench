#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int GHND ; 
 int GMEM_SHARE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

HGLOBAL FUNC9 (LPITEMIDLIST pidlRoot, LPITEMIDLIST * apidl, UINT cidl)
{
	int size = 0;
	WCHAR szTemp[MAX_PATH], *szFileName;
	LPITEMIDLIST pidl;
	HGLOBAL hGlobal;
	BOOL bSuccess;

	FUNC6("(%p,%p,%u)\n", pidlRoot, apidl, cidl);

	/* get path of combined pidl */
	pidl = FUNC3(pidlRoot, apidl[0]);
	if (!pidl)
		return 0;

	bSuccess = FUNC5(pidl, szTemp);
	FUNC4(pidl);
	if (!bSuccess)
		return 0;

	size = (FUNC8(szTemp)+1) * sizeof(WCHAR);

	/* fill the structure */
	hGlobal = FUNC0(GHND|GMEM_SHARE, size);
	if(!hGlobal) return hGlobal;
	szFileName = FUNC1(hGlobal);
	FUNC7(szFileName, szTemp, size);
	FUNC2(hGlobal);

	return hGlobal;
}