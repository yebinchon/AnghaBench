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
struct TYPE_6__ {TYPE_1__* lpBrowseInfo; int /*<<< orphan*/  hwndTreeView; } ;
typedef  TYPE_2__ browse_info ;
typedef  int ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  ulFlags; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/ * LPITEMIDLIST ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IEnumIDList ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HTREEITEM ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IDC_ARROW ; 
 scalar_t__ IDC_WAIT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IID_IShellFolder ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int SFGAO_FOLDER ; 
 int SFGAO_HASSUBFOLDER ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20( browse_info *info, IShellFolder * lpsf,
                 LPITEMIDLIST  pidl, HTREEITEM hParent, IEnumIDList* lpe)
{
	LPITEMIDLIST	pidlTemp = 0;
	ULONG		ulFetched;
	HRESULT		hr;
	HWND		hwnd = FUNC2( info->hwndTreeView );

	FUNC19("%p %p %p %p\n",lpsf, pidl, hParent, lpe);

	/* No IEnumIDList -> No children */
	if (!lpe) return;
	
	FUNC17( hwnd );
	FUNC18( FUNC12( 0, (LPSTR)IDC_WAIT ) );

	while (S_OK == FUNC3(lpe,1,&pidlTemp,&ulFetched))
	{
	    ULONG ulAttrs = SFGAO_HASSUBFOLDER | SFGAO_FOLDER;
	    IEnumIDList* pEnumIL = NULL;
	    IShellFolder* pSFChild = NULL;
	    FUNC9(lpsf, 1, (LPCITEMIDLIST*)&pidlTemp, &ulAttrs);
	    if (ulAttrs & SFGAO_FOLDER)
	    {
	        hr = FUNC7(lpsf,pidlTemp,NULL,&IID_IShellFolder,(LPVOID*)&pSFChild);
	        if (FUNC16(hr))
                {
	            DWORD flags = FUNC0(info->lpBrowseInfo->ulFlags);
	            hr = FUNC8(pSFChild, hwnd, flags, &pEnumIL);
                    if (hr == S_OK)
                    {
                        if ((FUNC6(pEnumIL, 1) != S_OK) ||
                             FUNC1(FUNC5(pEnumIL)))
                        {
                            FUNC4(pEnumIL);
                            pEnumIL = NULL;
                        }
                    }
                    FUNC10(pSFChild);
                }
	    }

	    if (!FUNC11(info, lpsf, pidlTemp, pidl, pEnumIL, hParent))
	        goto done;
	    FUNC15(pidlTemp);  /* Finally, free the pidl that the shell gave us... */
	    pidlTemp=NULL;
	}

done:
	FUNC14();
	FUNC18(FUNC13(0, (LPWSTR)IDC_ARROW));
    FUNC15(pidlTemp);
}