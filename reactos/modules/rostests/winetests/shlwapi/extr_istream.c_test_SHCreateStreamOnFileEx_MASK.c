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
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ERROR_FILE_EXISTS ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int STGM_CREATE ; 
 int STGM_FAILIFTHERE ; 
 int STGM_READ ; 
 int STGM_TRANSACTED ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC16(DWORD mode, DWORD stgm)
{
    IStream * stream;
    IStream * template = NULL;
    HRESULT ret;
    ULONG refcount;
    WCHAR test_file[MAX_PATH];
    CHAR  test_fileA[MAX_PATH];
    static const CHAR testEx_txt[] = "\\testEx.txt";
    BOOL delret;

    if (winetest_debug > 1)
        FUNC14("SHCreateStreamOnFileEx: testing mode %d, STGM flags %08x\n", mode, stgm);

    /* Don't used a fixed path for the testEx.txt file */
    FUNC2(MAX_PATH, test_fileA);
    FUNC9(test_fileA, testEx_txt);
    FUNC5(CP_ACP, 0, test_fileA, -1, test_file, MAX_PATH);

    /* invalid arguments */

    if (0)
    {
        /* Crashes on NT4 */
        stream = NULL;
        ret = FUNC6(NULL, mode, 0, FALSE, NULL, &stream);
        FUNC10(ret == FUNC3(ERROR_PATH_NOT_FOUND) || /* XP */
           ret == E_INVALIDARG /* Vista */,
          "SHCreateStreamOnFileEx: expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) or E_INVALIDARG, got 0x%08x\n", ret);
        FUNC10(stream == NULL, "SHCreateStreamOnFileEx: expected a NULL IStream object, got %p\n", stream);
    }

    stream = NULL;
    ret = FUNC6(test_file, mode, 0, FALSE, template, &stream);
    if (ret == FUNC3(ERROR_ACCESS_DENIED)) {
        FUNC15("File probably locked by Anti-Virus/Spam software, trying again\n");
        FUNC7(1000);
        ret = FUNC6(test_file, mode, 0, FALSE, template, &stream);
    }
    FUNC10( ret == FUNC3(ERROR_FILE_NOT_FOUND) ||
        ret == FUNC3(ERROR_INVALID_PARAMETER),
        "SHCreateStreamOnFileEx: expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) or "
        "HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got 0x%08x\n", ret);

    FUNC10(stream == NULL, "SHCreateStreamOnFileEx: expected a NULL IStream object, got %p\n", stream);

    if (0)
    {
        /* This test crashes on WinXP SP2 */
        ret = FUNC6(test_file, mode, 0, FALSE, NULL, NULL);
        FUNC10(ret == E_INVALIDARG, "SHCreateStreamOnFileEx: expected E_INVALIDARG, got 0x%08x\n", ret);
    }

    /* file does not exist */

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_FAILIFTHERE | stgm, 0, FALSE, NULL, &stream);
    if ((stgm & STGM_TRANSACTED) == STGM_TRANSACTED && mode == STGM_READ) {
        FUNC10(ret == FUNC3(ERROR_FILE_NOT_FOUND) /* XP */ || ret == E_INVALIDARG /* Vista */,
          "SHCreateStreamOnFileEx: expected E_INVALIDARG or HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got 0x%08x\n", ret);

        if (ret == E_INVALIDARG) {
            FUNC11("SHCreateStreamOnFileEx: STGM_TRANSACTED not supported in this configuration.\n");
            return;
        }
    } else {
        FUNC10( ret == FUNC3(ERROR_FILE_NOT_FOUND) ||
            ret == FUNC3(ERROR_INVALID_PARAMETER),
            "SHCreateStreamOnFileEx: expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) or "
            "HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got 0x%08x\n", ret);
    }
    FUNC10(stream == NULL, "SHCreateStreamOnFileEx: expected a NULL IStream object, got %p\n", stream);

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_FAILIFTHERE | stgm, 0, TRUE, NULL, &stream);
    /* not supported on win9x */
    if (FUNC8(ret == FUNC3(ERROR_INVALID_PARAMETER) && stream == NULL)) {
        FUNC11("Not supported\n");
        FUNC0(test_fileA);
        return;
    }

    FUNC10(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    FUNC10(stream != NULL, "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        FUNC13(stream);
        FUNC12(stream, mode);

        refcount = FUNC4(stream);
        FUNC10(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);

        delret = FUNC0(test_fileA);
        FUNC10(delret, "SHCreateStreamOnFileEx: could not delete the test file, got error %d\n",
           FUNC1());
    }

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_CREATE | stgm, 0, FALSE, NULL, &stream);
    if (ret == FUNC3(ERROR_ACCESS_DENIED)) {
        FUNC15("File probably locked by Anti-Virus/Spam software, trying again\n");
        FUNC7(1000);
        ret = FUNC6(test_file, mode | STGM_CREATE | stgm, 0, FALSE, NULL, &stream);
    }
    FUNC10(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    FUNC10(stream != NULL, "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        FUNC12(stream, mode);

        refcount = FUNC4(stream);
        FUNC10(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);

        delret = FUNC0(test_fileA);
        FUNC10(delret, "SHCreateStreamOnFileEx: could not delete the test file, got error %d\n",
           FUNC1());
    }

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_CREATE | stgm, 0, TRUE, NULL, &stream);
    if (ret == FUNC3(ERROR_ACCESS_DENIED)) {
        FUNC15("File probably locked by Anti-Virus/Spam software, trying again\n");
        FUNC7(1000);
        ret = FUNC6(test_file, mode | STGM_CREATE | stgm, 0, TRUE, NULL, &stream);
    }
    FUNC10(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    FUNC10(stream != NULL, "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        FUNC12(stream, mode);

        refcount = FUNC4(stream);
        FUNC10(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);
    }

    /* NOTE: don't delete the file, as it will be used for the file exists tests. */

    /* file exists */

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_FAILIFTHERE | stgm, 0, FALSE, NULL, &stream);
    FUNC10(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    FUNC10(stream != NULL, "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        FUNC12(stream, mode);

        refcount = FUNC4(stream);
        FUNC10(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);
    }

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_FAILIFTHERE | stgm, 0, TRUE, NULL, &stream);
    FUNC10(ret == FUNC3(ERROR_FILE_EXISTS), "SHCreateStreamOnFileEx: expected HRESULT_FROM_WIN32(ERROR_FILE_EXISTS), got 0x%08x\n", ret);
    FUNC10(stream == NULL, "SHCreateStreamOnFileEx: expected a NULL IStream object, got %p\n", stream);

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_CREATE | stgm, 0, FALSE, NULL, &stream);
    FUNC10(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    FUNC10(stream != NULL, "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        FUNC12(stream, mode);

        refcount = FUNC4(stream);
        FUNC10(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);
    }

    stream = NULL;
    ret = FUNC6(test_file, mode | STGM_CREATE | stgm, 0, TRUE, NULL, &stream);
    FUNC10(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    FUNC10(stream != NULL, "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        FUNC12(stream, mode);

        refcount = FUNC4(stream);
        FUNC10(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);
    }

    delret = FUNC0(test_fileA);
    FUNC10(delret, "SHCreateStreamOnFileEx: could not delete the test file, got error %d\n",
       FUNC1());
}