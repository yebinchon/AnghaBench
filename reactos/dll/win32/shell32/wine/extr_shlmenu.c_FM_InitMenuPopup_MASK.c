#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ ULONG_PTR ;
typedef  int ULONG ;
typedef  int UINT ;
struct TYPE_8__ {int bInitialized; int uID; int uEnumFlags; scalar_t__ pidl; int /*<<< orphan*/  (* lpfnCallback ) (scalar_t__,int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {int cbSize; scalar_t__ dwMenuData; void* fMask; } ;
typedef  TYPE_1__ MENUINFO ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * LPITEMIDLIST ;
typedef  int /*<<< orphan*/  (* LPFNFMCALLBACK ) (scalar_t__,int /*<<< orphan*/ *) ;
typedef  TYPE_2__* LPFMINFO ;
typedef  scalar_t__ LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IEnumIDList ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  FMINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int) ; 
 int FALSE ; 
 int FM_BLANK_ICON ; 
 int /*<<< orphan*/  FM_DEFAULT_HEIGHT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IShellFolder ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ILGDN_FORPARSING ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 void* MIM_MENUDATA ; 
 scalar_t__* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 int SFGAO_FOLDER ; 
 int SHCONTF_FOLDERS ; 
 int SHCONTF_NONFOLDERS ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int TRUE ; 
 int /*<<< orphan*/  bAbortInit ; 

__attribute__((used)) static int FUNC21(HMENU hmenu, LPCITEMIDLIST pAlternatePidl)
{	IShellFolder	*lpsf, *lpsf2;
	ULONG		ulItemAttr = SFGAO_FOLDER;
	UINT		uID, uEnumFlags;
	LPFNFMCALLBACK	lpfnCallback;
	LPCITEMIDLIST	pidl;
	WCHAR		sTemp[MAX_PATH];
	int		NumberOfItems = 0, iIcon;
	MENUINFO	MenuInfo;
	LPFMINFO	menudata;

	FUNC20("%p %p\n", hmenu, pAlternatePidl);

	MenuInfo.cbSize = sizeof(MENUINFO);
	MenuInfo.fMask = MIM_MENUDATA;

	if (! FUNC3(hmenu, &MenuInfo))
	  return FALSE;

	menudata = (LPFMINFO)MenuInfo.dwMenuData;

	if ((menudata == 0) || (MenuInfo.cbSize != sizeof(MENUINFO)))
	{
	  FUNC1("menudata corrupt: %p %u\n", menudata, MenuInfo.cbSize);
	  return 0;
	}

	if (menudata->bInitialized)
	  return 0;

	pidl = (pAlternatePidl? pAlternatePidl: menudata->pidl);
	if (!pidl)
	  return 0;

	uID = menudata->uID;
	uEnumFlags = menudata->uEnumFlags;
	lpfnCallback = menudata->lpfnCallback;
	menudata->bInitialized = FALSE;

	FUNC19(hmenu, &MenuInfo);

	if (FUNC18 (FUNC17(&lpsf)))
	{
	  if (FUNC18(FUNC11(lpsf, pidl,0,&IID_IShellFolder,(LPVOID *)&lpsf2)))
	  {
	    IEnumIDList	*lpe = NULL;

	    if (FUNC18 (FUNC12(lpsf2, 0, uEnumFlags, &lpe )))
	    {

	      LPITEMIDLIST pidlTemp = NULL;
	      ULONG ulFetched;

	      while ((!bAbortInit) && (S_OK == FUNC7(lpe,1,&pidlTemp,&ulFetched)))
	      {
		if (FUNC18 (FUNC13(lpsf, 1, (LPCITEMIDLIST*)&pidlTemp, &ulItemAttr)))
		{
		  FUNC10(NULL, pidlTemp, sTemp, ILGDN_FORPARSING);
		  if (! (FUNC16(lpsf, pidlTemp, FALSE, 0, &iIcon)))
		    iIcon = FM_BLANK_ICON;
		  if ( SFGAO_FOLDER & ulItemAttr)
		  {
		    LPFMINFO lpFmMi;
		    MENUINFO MenuInfo;
		    HMENU hMenuPopup = FUNC0();

		    lpFmMi = FUNC6(FUNC5(), HEAP_ZERO_MEMORY, sizeof(FMINFO));

		    lpFmMi->pidl = FUNC9(pidl, pidlTemp);
		    lpFmMi->uEnumFlags = SHCONTF_FOLDERS | SHCONTF_NONFOLDERS;

		    MenuInfo.cbSize = sizeof(MENUINFO);
		    MenuInfo.fMask = MIM_MENUDATA;
		    MenuInfo.dwMenuData = (ULONG_PTR) lpFmMi;
		    FUNC19 (hMenuPopup, &MenuInfo);

		    FUNC2 (hmenu, sTemp, uID, iIcon, hMenuPopup, FM_DEFAULT_HEIGHT);
		  }
		  else
		  {
		    LPWSTR pExt = FUNC15(sTemp);
		    if (pExt)
		      *pExt = 0;
		    FUNC2 (hmenu, sTemp, uID, iIcon, 0, FM_DEFAULT_HEIGHT);
		  }
		}

		if (lpfnCallback)
		{
		  FUNC20("enter callback\n");
		  lpfnCallback ( pidl, pidlTemp);
		  FUNC20("leave callback\n");
		}

		NumberOfItems++;
	      }
	      FUNC8 (lpe);
	    }
	    FUNC14(lpsf2);
	  }
	  FUNC14(lpsf);
	}

	if ( FUNC4 (hmenu) == 0 )
	{
          static const WCHAR szEmpty[] = { '(','e','m','p','t','y',')',0 };
	  FUNC2 (hmenu, szEmpty, uID, FM_BLANK_ICON, 0, FM_DEFAULT_HEIGHT);
	  NumberOfItems++;
	}

	menudata->bInitialized = TRUE;
	FUNC19(hmenu, &MenuInfo);

	return NumberOfItems;
}