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
typedef  int UINT ;
typedef  int SFGAOF ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  scalar_t__ LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellItemArray ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int E_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int SFGAO_FOLDER ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SIATTRIBFLAGS_AND ; 
 int /*<<< orphan*/  SIATTRIBFLAGS_OR ; 
 int S_FALSE ; 
 int S_OK ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,int) ; 
 int FUNC16 (int,scalar_t__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  pSHCreateShellItemArrayFromShellItem ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void FUNC18(void)
{
    IShellItemArray *psia_files, *psia_folders1, *psia_folders2, *psia_all;
    IShellFolder *pdesktopsf;
    LPCITEMIDLIST pidl_array[5];
    SFGAOF attr;
    HRESULT hr;
    WCHAR curdirW[MAX_PATH];
    WCHAR buf[MAX_PATH];
    UINT i;
    static const WCHAR testdir1W[] = {'t','e','s','t','d','i','r',0};
    static const WCHAR testdir2W[] = {'t','e','s','t','d','i','r','\\','t','e','s','t','d','i','r','2',0};
    static const WCHAR testdir3W[] = {'t','e','s','t','d','i','r','\\','t','e','s','t','d','i','r','3',0};
    static const WCHAR testfile1W[] = {'t','e','s','t','d','i','r','\\','t','e','s','t','1','.','t','x','t',0};
    static const WCHAR testfile2W[] = {'t','e','s','t','d','i','r','\\','t','e','s','t','2','.','t','x','t',0};
    static const WCHAR *testfilesW[5] = { testdir1W, testdir2W, testdir3W, testfile1W, testfile2W };

    if(!pSHCreateShellItemArrayFromShellItem)
    {
        FUNC17("No SHCreateShellItemArrayFromShellItem, skipping test...\n");
        return;
    }

    FUNC2();
    FUNC1(".\\testdir\\testdir3", NULL);

    FUNC10(&pdesktopsf);

    FUNC3(MAX_PATH, curdirW);
    FUNC14(curdirW);

    for(i = 0; i < 5; i++)
    {
        FUNC13(buf, curdirW);
        FUNC12(buf, testfilesW[i]);
        hr = FUNC5(pdesktopsf, NULL, NULL, buf, NULL, (LPITEMIDLIST*)&pidl_array[i], NULL);
        FUNC15(hr == S_OK, "got 0x%08x\n", hr);
    }
    FUNC6(pdesktopsf);

    hr = FUNC16(2, pidl_array, &psia_folders1);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC16(2, &pidl_array[1], &psia_folders2);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC16(2, &pidl_array[3], &psia_files);
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC16(4, &pidl_array[1], &psia_all); /* All except the first */
    FUNC15(hr == S_OK, "got 0x%08x\n", hr);

    for(i = 0; i < 5; i++)
        FUNC4((LPITEMIDLIST)pidl_array[i]);

    /* [testfolder/, testfolder/testfolder2] seems to break in Vista */
    attr = 0xdeadbeef;
    hr = FUNC7(psia_folders1, SIATTRIBFLAGS_AND, SFGAO_FOLDER, &attr);
    FUNC15(hr == S_OK || FUNC11(hr == E_UNEXPECTED)  /* Vista */, "Got 0x%08x\n", hr);
    FUNC15(attr == SFGAO_FOLDER || FUNC11(attr == 0) /* Vista */, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = FUNC7(psia_folders1, SIATTRIBFLAGS_OR, SFGAO_FOLDER, &attr);
    FUNC15(hr == S_OK || FUNC11(hr == E_UNEXPECTED)  /* Vista */, "Got 0x%08x\n", hr);
    FUNC15(attr == SFGAO_FOLDER || FUNC11(attr == 0) /* Vista */, "Got 0x%08x\n", attr);

    /* [testfolder/testfolder2, testfolder/testfolder3] works */
    attr = 0xdeadbeef;
    hr = FUNC7(psia_folders2, SIATTRIBFLAGS_AND, SFGAO_FOLDER, &attr);
    FUNC15(hr == S_OK, "Got 0x%08x\n", hr);
    FUNC15(attr == SFGAO_FOLDER, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = FUNC7(psia_files, SIATTRIBFLAGS_AND, SFGAO_FOLDER, &attr);
    FUNC15(hr == S_FALSE || FUNC11(hr == S_OK) /* Vista */, "Got 0x%08x\n", hr);
    FUNC15(attr == 0, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = FUNC7(psia_all, SIATTRIBFLAGS_AND, SFGAO_FOLDER, &attr);
    FUNC15(hr == S_FALSE || FUNC11(hr == S_OK) /* Vista */, "Got 0x%08x\n", hr);
    FUNC15(attr == 0, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = FUNC7(psia_folders2, SIATTRIBFLAGS_OR, SFGAO_FOLDER, &attr);
    FUNC15(hr == S_OK, "Got 0x%08x\n", hr);
    FUNC15(attr == SFGAO_FOLDER, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = FUNC7(psia_files, SIATTRIBFLAGS_OR, SFGAO_FOLDER, &attr);
    FUNC15(hr == S_FALSE || FUNC11(hr == S_OK) /* Vista */, "Got 0x%08x\n", hr);
    FUNC15(attr == 0, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = FUNC7(psia_all, SIATTRIBFLAGS_OR, SFGAO_FOLDER, &attr);
    FUNC15(hr == S_OK, "Got 0x%08x\n", hr);
    FUNC15(attr == SFGAO_FOLDER, "Got 0x%08x\n", attr);

    FUNC8(psia_folders1);
    FUNC8(psia_folders2);
    FUNC8(psia_files);
    FUNC8(psia_all);

    FUNC9(".\\testdir\\testdir3");
    FUNC0();
}