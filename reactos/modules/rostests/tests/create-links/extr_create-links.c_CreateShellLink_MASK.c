#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_17__ {TYPE_1__* lpVtbl; } ;
struct TYPE_16__ {TYPE_2__* lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* Release ) (TYPE_3__*) ;scalar_t__ (* QueryInterface ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ (* SetDescription ) (TYPE_3__*,char*) ;scalar_t__ (* SetIconLocation ) (TYPE_3__*,char*,int) ;scalar_t__ (* SetWorkingDirectory ) (TYPE_3__*,char*) ;scalar_t__ (* SetArguments ) (TYPE_3__*,char*) ;scalar_t__ (* SetPath ) (TYPE_3__*,char*) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  (* Release ) (TYPE_4__*) ;scalar_t__ (* Save ) (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  char* LPCSTR ;
typedef  TYPE_3__ IShellLinkA ;
typedef  TYPE_4__ IPersistFile ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ShellLink ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IPersistFile ; 
 int /*<<< orphan*/  IID_IShellLink ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,char*,int) ; 
 scalar_t__ FUNC8 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

HRESULT FUNC13(LPCSTR linkPath, LPCSTR cmd, LPCSTR arg, LPCSTR dir, LPCSTR iconPath, int icon_nr, LPCSTR comment)
{
	IShellLinkA* psl;
	IPersistFile* ppf;
	WCHAR buffer[MAX_PATH];

	HRESULT hr = FUNC0(&CLSID_ShellLink, NULL, CLSCTX_INPROC_SERVER, &IID_IShellLink, (LPVOID*)&psl);

	FUNC3("creating shortcut file '%s' to %s...\n", linkPath, cmd);

	if (FUNC2(hr)) {
		hr = psl->lpVtbl->SetPath(psl, cmd);

		if (arg)
			hr = psl->lpVtbl->SetArguments(psl, arg);

		if (dir)
			hr = psl->lpVtbl->SetWorkingDirectory(psl, dir);

		if (iconPath)
			hr = psl->lpVtbl->SetIconLocation(psl, iconPath, icon_nr);

		if (comment)
			hr = psl->lpVtbl->SetDescription(psl, comment);

		hr = psl->lpVtbl->QueryInterface(psl, &IID_IPersistFile, (LPVOID*)&ppf);

		if (FUNC2(hr)) {
			FUNC1(CP_ACP, 0, linkPath, -1, buffer, MAX_PATH);

			hr = ppf->lpVtbl->Save(ppf, buffer, TRUE);

			ppf->lpVtbl->Release(ppf);
		}

		psl->lpVtbl->Release(psl);
	}

	if (FUNC2(hr))
		FUNC3("OK\n\n");
	else
		FUNC3("error %08x\n\n", (int) hr);

	return hr;
}