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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IContextMenu ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IContextMenu ; 
 int /*<<< orphan*/  IID_IShellFolder ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(void)
{
    IShellFolder *psf_desktop;
    IContextMenu *pcm;
    LPITEMIDLIST pidl;
    HRESULT hr;
    WCHAR path[MAX_PATH];
    const WCHAR filename[] =
        {'\\','t','e','s','t','d','i','r','\\','t','e','s','t','1','.','t','x','t',0};
    LPCITEMIDLIST pidl_child;
    IShellFolder *psf;

    FUNC2(MAX_PATH, path);
    if (!path[0])
    {
        FUNC12("GetCurrentDirectoryW returned an empty string.\n");
        return;
    }
    FUNC10(path, filename);
    FUNC9(&psf_desktop);

    FUNC1();

    hr = FUNC6(psf_desktop, NULL, NULL, path, NULL, &pidl, 0);
    FUNC11(hr == S_OK, "Got 0x%08x\n", hr);

    hr = FUNC8(pidl, &IID_IShellFolder, (void **)&psf, &pidl_child);
    FUNC11(hr == S_OK, "Failed to bind to folder, hr %#x.\n", hr);

    /* Item menu */
    hr = FUNC5(psf, NULL, 1, &pidl_child, &IID_IContextMenu, NULL, (void **)&pcm);
    FUNC11(hr == S_OK, "GetUIObjectOf() failed, hr %#x.\n", hr);
    FUNC13(pcm, FALSE);
    FUNC3(pcm);

    /* Background menu */
    hr = FUNC5(psf_desktop, NULL, 0, NULL, &IID_IContextMenu, NULL, (void **)&pcm);
    FUNC11(hr == S_OK, "GetUIObjectOf() failed, hr %#x.\n", hr);
    FUNC13(pcm, TRUE);
    FUNC3(pcm);

    FUNC7(psf);
    FUNC4(pidl);

    FUNC7(psf_desktop);
    FUNC0();
}