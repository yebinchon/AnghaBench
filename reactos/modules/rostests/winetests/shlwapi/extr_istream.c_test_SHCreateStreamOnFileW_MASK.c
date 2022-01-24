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
typedef  int /*<<< orphan*/ * ULONG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int STGM_CONVERT ; 
 int STGM_CREATE ; 
 int STGM_DELETEONRELEASE ; 
 int STGM_FAILIFTHERE ; 
 int STGM_TRANSACTED ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(DWORD mode, DWORD stgm)
{
    IStream * stream;
    HRESULT ret;
    ULONG refcount;
    WCHAR test_file[MAX_PATH];
    CHAR  test_fileA[MAX_PATH];
    static const CHAR testW_txt[] = "\\testW.txt";

    FUNC12("SHCreateStreamOnFileW: testing mode %d, STGM flags %08x\n", mode, stgm);

    /* Don't used a fixed path for the testW.txt file */
    FUNC2(MAX_PATH, test_fileA);
    FUNC7(test_fileA, testW_txt);
    FUNC5(CP_ACP, 0, test_fileA, -1, test_file, MAX_PATH);

    /* invalid arguments */

    if (0)
    {
        /* Crashes on NT4 */
        stream = NULL;
        ret = FUNC6(NULL, mode | stgm, &stream);
        FUNC8(ret == FUNC3(ERROR_PATH_NOT_FOUND) || /* XP */
           ret == E_INVALIDARG /* Vista */,
          "SHCreateStreamOnFileW: expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) or E_INVALIDARG, got 0x%08x\n", ret);
        FUNC8(stream == NULL, "SHCreateStreamOnFileW: expected a NULL IStream object, got %p\n", stream);
    }

    if (0)
    {
        /* This test crashes on WinXP SP2 */
            ret = FUNC6(test_file, mode | stgm, NULL);
            FUNC8(ret == E_INVALIDARG, "SHCreateStreamOnFileW: expected E_INVALIDARG, got 0x%08x\n", ret);
    }

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_CONVERT | stgm, &stream);
    FUNC8(ret == E_INVALIDARG, "SHCreateStreamOnFileW: expected E_INVALIDARG, got 0x%08x\n", ret);
    FUNC8(stream == NULL, "SHCreateStreamOnFileW: expected a NULL IStream object, got %p\n", stream);

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_DELETEONRELEASE | stgm, &stream);
    FUNC8(ret == E_INVALIDARG, "SHCreateStreamOnFileW: expected E_INVALIDARG, got 0x%08x\n", ret);
    FUNC8(stream == NULL, "SHCreateStreamOnFileW: expected a NULL IStream object, got %p\n", stream);

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_TRANSACTED | stgm, &stream);
    FUNC8(ret == E_INVALIDARG, "SHCreateStreamOnFileW: expected E_INVALIDARG, got 0x%08x\n", ret);
    FUNC8(stream == NULL, "SHCreateStreamOnFileW: expected a NULL IStream object, got %p\n", stream);

    /* file does not exist */

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_FAILIFTHERE | stgm, &stream);
    if (ret == E_INVALIDARG) /* Win98 SE */ {
        FUNC13("Not supported\n");
        return;
    }

    FUNC8(ret == FUNC3(ERROR_FILE_NOT_FOUND), "SHCreateStreamOnFileW: expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got 0x%08x\n", ret);
    FUNC8(stream == NULL, "SHCreateStreamOnFileW: expected a NULL IStream object, got %p\n", stream);

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_CREATE | stgm, &stream);
    FUNC8(ret == S_OK, "SHCreateStreamOnFileW: expected S_OK, got 0x%08x\n", ret);
    FUNC8(stream != NULL, "SHCreateStreamOnFileW: expected a valid IStream object, got NULL\n");

    if (stream) {
        FUNC10(stream);
        FUNC9(stream, mode);

        refcount = FUNC4(stream);
        FUNC8(refcount == 0, "SHCreateStreamOnFileW: expected 0, got %d\n", refcount);
    }

    /* NOTE: don't delete the file, as it will be used for the file exists tests. */

    /* file exists */

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_FAILIFTHERE | stgm, &stream);
    FUNC8(ret == S_OK, "SHCreateStreamOnFileW: expected S_OK, got 0x%08x\n", ret);
    FUNC8(stream != NULL, "SHCreateStreamOnFileW: expected a valid IStream object, got NULL\n");

    if (stream) {
        FUNC9(stream, mode);

        refcount = FUNC4(stream);
        FUNC8(refcount == 0, "SHCreateStreamOnFileW: expected 0, got %d\n", refcount);
    }

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_CREATE | stgm, &stream);
    FUNC8(ret == S_OK, "SHCreateStreamOnFileW: expected S_OK, got 0x%08x\n", ret);
    FUNC8(stream != NULL, "SHCreateStreamOnFileW: expected a valid IStream object, got NULL\n");

    if (stream) {
        BOOL delret;

        FUNC11(stream, mode);
        FUNC9(stream, mode);

        refcount = FUNC4(stream);
        FUNC8(refcount == 0, "SHCreateStreamOnFileW: expected 0, got %d\n", refcount);

        delret = FUNC0(test_fileA);
        FUNC8(delret, "SHCreateStreamOnFileW: could not delete the test file, got error %d\n",
           FUNC1());
    }
}