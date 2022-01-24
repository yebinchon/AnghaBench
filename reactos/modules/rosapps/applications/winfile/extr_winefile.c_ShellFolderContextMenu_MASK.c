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
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int cbSize; scalar_t__ hIcon; scalar_t__ dwHotKey; int /*<<< orphan*/  nShow; int /*<<< orphan*/ * lpDirectory; int /*<<< orphan*/ * lpParameters; scalar_t__ lpVerb; int /*<<< orphan*/  hwnd; scalar_t__ fMask; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ LPCSTR ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  scalar_t__ INT_PTR ;
typedef  int /*<<< orphan*/  IContextMenu ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HMENU ;
typedef  TYPE_1__ CMINVOKECOMMANDINFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CMF_NORMAL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FCIDM_SHVIEWFIRST ; 
 int /*<<< orphan*/  FCIDM_SHVIEWLAST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IContextMenu ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int TPM_LEFTALIGN ; 
 int TPM_RETURNCMD ; 
 int TPM_RIGHTBUTTON ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC9 (scalar_t__,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(IShellFolder* shell_folder, HWND hwndParent, int cidl, LPCITEMIDLIST* apidl, int x, int y)
{
	IContextMenu* pcm;
	BOOL executed = FALSE;

	HRESULT hr = FUNC7(shell_folder, hwndParent, cidl, apidl, &IID_IContextMenu, NULL, (LPVOID*)&pcm);

	if (FUNC8(hr)) {
		HMENU hmenu = FUNC0();

		pcm = FUNC1(pcm);

		if (hmenu) {
			hr = FUNC5(pcm, hmenu, 0, FCIDM_SHVIEWFIRST, FCIDM_SHVIEWLAST, CMF_NORMAL);

			if (FUNC8(hr)) {
				UINT idCmd = FUNC9(hmenu, TPM_LEFTALIGN|TPM_RETURNCMD|TPM_RIGHTBUTTON, x, y, 0, hwndParent, NULL);

				FUNC2();

				if (idCmd) {
				  CMINVOKECOMMANDINFO cmi;

				  cmi.cbSize = sizeof(CMINVOKECOMMANDINFO);
				  cmi.fMask = 0;
				  cmi.hwnd = hwndParent;
				  cmi.lpVerb = (LPCSTR)(INT_PTR)(idCmd - FCIDM_SHVIEWFIRST);
				  cmi.lpParameters = NULL;
				  cmi.lpDirectory = NULL;
				  cmi.nShow = SW_SHOWNORMAL;
				  cmi.dwHotKey = 0;
				  cmi.hIcon = 0;

				  hr = FUNC4(pcm, &cmi);
					executed = TRUE;
				}
			} else
				FUNC2();
		}

		FUNC6(pcm);
	}

	return FUNC3(hr)? hr: executed? S_OK: S_FALSE;
}