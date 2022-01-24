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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IExtractIconW ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HICON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 unsigned int GIL_DONTCACHE ; 
 int /*<<< orphan*/  GIL_FORSHELL ; 
 unsigned int GIL_NOTFILENAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,unsigned int*) ; 
 int /*<<< orphan*/  IID_IExtractIconW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXSMICON ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int _MAX_PATH ; 

__attribute__((used)) static HICON FUNC8(IShellFolder* folder, LPCITEMIDLIST pidl)
{
	IExtractIconW* pExtract;

	if (FUNC7(FUNC5(folder, 0, 1, (LPCITEMIDLIST*)&pidl, &IID_IExtractIconW, 0, (LPVOID*)&pExtract))) {
		WCHAR path[_MAX_PATH];
		unsigned flags;
		HICON hicon;
		int idx;

		if (FUNC7(FUNC4(pExtract, GIL_FORSHELL, path, _MAX_PATH, &idx, &flags))) {
			if (!(flags & GIL_NOTFILENAME)) {
				if (idx == -1)
					idx = 0;	/* special case for some control panel applications */

				if ((int)FUNC1(path, idx, 0, &hicon, 1) > 0)
					flags &= ~GIL_DONTCACHE;
			} else {
				HICON hIconLarge = 0;

				HRESULT hr = FUNC3(pExtract, path, idx, &hIconLarge, &hicon, FUNC6(0/*GetSystemMetrics(SM_CXICON)*/,FUNC2(SM_CXSMICON)));

				if (FUNC7(hr))
					FUNC0(hIconLarge);
			}

			return hicon;
		}
	}

	return 0;
}