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
typedef  int /*<<< orphan*/ * LPITEMIDLIST ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CSIDL_FAVORITES ; 
 int CSIDL_FLAG_CREATE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ ERROR_ALREADY_EXISTS ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 scalar_t__ E_FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  pMalloc ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

__attribute__((used)) static void FUNC15(const char *arg)
{
    char path[MAX_PATH];
    HRESULT hr;

    if (arg[0] == '1')
    {
        LPITEMIDLIST pidl;
        char *p;

        /* test what happens when CSIDL_FAVORITES is set to a nonexistent directory */

        /* test some failure cases first: */
        hr = FUNC9(NULL, CSIDL_FAVORITES, NULL, SHGFP_TYPE_CURRENT, path);
        FUNC7(hr == FUNC3(ERROR_FILE_NOT_FOUND),
            "SHGetFolderPath returned 0x%08x, expected 0x80070002\n", hr);

        pidl = NULL;
        hr = FUNC8(NULL, CSIDL_FAVORITES, NULL, 0, &pidl);
        FUNC7(hr == E_FAIL || hr == FUNC3(ERROR_FILE_NOT_FOUND),
            "SHGetFolderLocation returned 0x%08x\n", hr);
        if (hr == S_OK && pidl) FUNC4(pMalloc, pidl);

        FUNC7(!FUNC11(NULL, path, CSIDL_FAVORITES, FALSE),
            "SHGetSpecialFolderPath succeeded, expected failure\n");

        pidl = NULL;
        hr = FUNC10(NULL, CSIDL_FAVORITES, &pidl);
        FUNC7(hr == E_FAIL || hr == FUNC3(ERROR_FILE_NOT_FOUND),
            "SHGetFolderLocation returned 0x%08x\n", hr);

        if (hr == S_OK && pidl) FUNC4(pMalloc, pidl);

        /* now test success: */
        hr = FUNC9(NULL, CSIDL_FAVORITES | CSIDL_FLAG_CREATE, NULL,
                               SHGFP_TYPE_CURRENT, path);
        FUNC7 (hr == S_OK, "got 0x%08x\n", hr);
        if (hr == S_OK)
        {
            BOOL ret;

            FUNC14("CSIDL_FAVORITES was changed to %s\n", path);
            ret = FUNC0(path, NULL);
            FUNC7(!ret, "expected failure with ERROR_ALREADY_EXISTS\n");
            if (!ret)
                FUNC7(FUNC2() == ERROR_ALREADY_EXISTS,
                  "got %d, expected ERROR_ALREADY_EXISTS\n", FUNC2());

            p = path + FUNC13(path);
            FUNC12(p, "\\desktop.ini");
            FUNC1(path);
            *p = 0;
            FUNC6( path, FILE_ATTRIBUTE_NORMAL );
            ret = FUNC5(path);
            FUNC7( ret, "failed to remove %s error %u\n", path, FUNC2() );
        }
    }
    else if (arg[0] == '2')
    {
        /* make sure SHGetFolderPath still succeeds when the
           original value of CSIDL_FAVORITES is restored. */
        hr = FUNC9(NULL, CSIDL_FAVORITES | CSIDL_FLAG_CREATE, NULL,
            SHGFP_TYPE_CURRENT, path);
        FUNC7(hr == S_OK, "SHGetFolderPath failed: 0x%08x\n", hr);
    }
}