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
typedef  int SFGAOF ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellItem ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_DESKTOP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int E_FAIL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int SFGAO_FOLDER ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int S_FALSE ; 
 int S_OK ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static void FUNC19(void)
{
    IShellItem *psi, *psi_folder1, *psi_file1;
    IShellFolder *pdesktopsf;
    LPITEMIDLIST pidl_desktop, pidl;
    SFGAOF sfgao;
    HRESULT hr;
    WCHAR curdirW[MAX_PATH];
    WCHAR buf[MAX_PATH];
    static const WCHAR testdir1W[] = {'t','e','s','t','d','i','r',0};
    static const WCHAR testfile1W[] = {'t','e','s','t','d','i','r','\\','t','e','s','t','1','.','t','x','t',0};

    if(!&pSHCreateShellItem)
    {
        FUNC18("SHCreateShellItem missing.\n");
        return;
    }

    hr = FUNC10(NULL, CSIDL_DESKTOP, &pidl_desktop);
    FUNC16(hr == S_OK, "Got 0x%08x\n", hr);
    if(FUNC11(hr))
    {
        hr = FUNC17(NULL, NULL, pidl_desktop, &psi);
        FUNC16(hr == S_OK, "Got 0x%08x\n", hr);
        FUNC4(pidl_desktop);
    }
    if(FUNC2(hr))
    {
        FUNC18("Skipping tests.\n");
        return;
    }

    if(0)
    {
        /* Crashes on native (Win 7) */
        FUNC7(psi, 0, NULL);
    }

    /* Test GetAttributes on the desktop folder. */
    sfgao = 0xdeadbeef;
    hr = FUNC7(psi, SFGAO_FOLDER, &sfgao);
    FUNC16(hr == S_OK || FUNC12(hr == E_FAIL) /* <Vista */, "Got 0x%08x\n", hr);
    FUNC16(sfgao == SFGAO_FOLDER || FUNC12(sfgao == 0) /* <Vista */, "Got 0x%08x\n", sfgao);

    FUNC8(psi);

    FUNC1();

    FUNC9(&pdesktopsf);

    FUNC3(MAX_PATH, curdirW);
    FUNC15(curdirW);

    FUNC14(buf, curdirW);
    FUNC13(buf, testdir1W);
    hr = FUNC5(pdesktopsf, NULL, NULL, buf, NULL, &pidl, NULL);
    FUNC16(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC17(NULL, NULL, pidl, &psi_folder1);
    FUNC16(hr == S_OK, "Got 0x%08x\n", sfgao);
    FUNC4(pidl);

    FUNC14(buf, curdirW);
    FUNC13(buf, testfile1W);
    hr = FUNC5(pdesktopsf, NULL, NULL, buf, NULL, &pidl, NULL);
    FUNC16(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC17(NULL, NULL, pidl, &psi_file1);
    FUNC16(hr == S_OK, "Got 0x%08x\n", sfgao);
    FUNC4(pidl);

    FUNC6(pdesktopsf);

    sfgao = 0xdeadbeef;
    hr = FUNC7(psi_folder1, 0, &sfgao);
    FUNC16(hr == S_OK, "Got 0x%08x\n", hr);
    FUNC16(sfgao == 0, "Got 0x%08x\n", sfgao);

    sfgao = 0xdeadbeef;
    hr = FUNC7(psi_folder1, SFGAO_FOLDER, &sfgao);
    FUNC16(hr == S_OK, "Got 0x%08x\n", hr);
    FUNC16(sfgao == SFGAO_FOLDER, "Got 0x%08x\n", sfgao);

    sfgao = 0xdeadbeef;
    hr = FUNC7(psi_file1, SFGAO_FOLDER, &sfgao);
    FUNC16(hr == S_FALSE, "Got 0x%08x\n", hr);
    FUNC16(sfgao == 0, "Got 0x%08x\n", sfgao);

    FUNC8(psi_folder1);
    FUNC8(psi_file1);

    FUNC0();
}