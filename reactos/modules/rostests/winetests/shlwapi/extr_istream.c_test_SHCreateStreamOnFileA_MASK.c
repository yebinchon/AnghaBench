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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_BAD_PATHNAME ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ **) ; 
 int STGM_CONVERT ; 
 int STGM_CREATE ; 
 int STGM_DELETEONRELEASE ; 
 int STGM_FAILIFTHERE ; 
 int STGM_TRANSACTED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(DWORD mode, DWORD stgm)
{
    IStream * stream;
    HRESULT ret;
    ULONG refcount;
    char test_file[MAX_PATH];
    static const CHAR testA_txt[] = "\\testA.txt";

    FUNC11("SHCreateStreamOnFileA: testing mode %d, STGM flags %08x\n", mode, stgm);

    /* Don't used a fixed path for the testA.txt file */
    FUNC2(MAX_PATH, test_file);
    FUNC6(test_file, testA_txt);

    /* invalid arguments */

    stream = NULL;
    ret = FUNC5(NULL, mode | stgm, &stream);
    if (ret == E_INVALIDARG) /* Win98 SE */ {
        FUNC12("Not supported\n");
        return;
    }

    FUNC7(ret == FUNC3(ERROR_PATH_NOT_FOUND) /* NT */ ||
       ret == FUNC3(ERROR_BAD_PATHNAME) /* 9x */,
       "SHCreateStreamOnFileA: expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) "
       "or HRESULT_FROM_WIN32(ERROR_BAD_PATHNAME), got 0x%08x\n", ret);
    FUNC7(stream == NULL, "SHCreateStreamOnFileA: expected a NULL IStream object, got %p\n", stream);

if (0) /* This test crashes on WinXP SP2 */
{
    ret = FUNC5(test_file, mode | stgm, NULL);
    FUNC7(ret == E_INVALIDARG, "SHCreateStreamOnFileA: expected E_INVALIDARG, got 0x%08x\n", ret);
}

    stream = NULL;
    ret = FUNC5(test_file, mode | STGM_CONVERT | stgm, &stream);
    FUNC7(ret == E_INVALIDARG, "SHCreateStreamOnFileA: expected E_INVALIDARG, got 0x%08x\n", ret);
    FUNC7(stream == NULL, "SHCreateStreamOnFileA: expected a NULL IStream object, got %p\n", stream);

    stream = NULL;
    ret = FUNC5(test_file, mode | STGM_DELETEONRELEASE | stgm, &stream);
    FUNC7(ret == E_INVALIDARG, "SHCreateStreamOnFileA: expected E_INVALIDARG, got 0x%08x\n", ret);
    FUNC7(stream == NULL, "SHCreateStreamOnFileA: expected a NULL IStream object, got %p\n", stream);

    stream = NULL;
    ret = FUNC5(test_file, mode | STGM_TRANSACTED | stgm, &stream);
    FUNC7(ret == E_INVALIDARG, "SHCreateStreamOnFileA: expected E_INVALIDARG, got 0x%08x\n", ret);
    FUNC7(stream == NULL, "SHCreateStreamOnFileA: expected a NULL IStream object, got %p\n", stream);

    /* file does not exist */

    stream = NULL;
    ret = FUNC5(test_file, mode | STGM_FAILIFTHERE | stgm, &stream);
    FUNC7(ret == FUNC3(ERROR_FILE_NOT_FOUND), "SHCreateStreamOnFileA: expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got 0x%08x\n", ret);
    FUNC7(stream == NULL, "SHCreateStreamOnFileA: expected a NULL IStream object, got %p\n", stream);

    stream = NULL;
    ret = FUNC5(test_file, mode | STGM_CREATE | stgm, &stream);
    FUNC7(ret == S_OK, "SHCreateStreamOnFileA: expected S_OK, got 0x%08x\n", ret);
    FUNC7(stream != NULL, "SHCreateStreamOnFileA: expected a valid IStream object, got NULL\n");

    if (stream) {
        FUNC9(stream);
        FUNC8(stream, mode);

        refcount = FUNC4(stream);
        FUNC7(refcount == 0, "SHCreateStreamOnFileA: expected 0, got %d\n", refcount);
    }

    /* NOTE: don't delete the file, as it will be used for the file exists tests. */

    /* file exists */

    stream = NULL;
    ret = FUNC5(test_file, mode | STGM_FAILIFTHERE | stgm, &stream);
    FUNC7(ret == S_OK, "SHCreateStreamOnFileA: expected S_OK, got 0x%08x\n", ret);
    FUNC7(stream != NULL, "SHCreateStreamOnFileA: expected a valid IStream object, got NULL\n");

    if (stream) {
        FUNC8(stream, mode);

        refcount = FUNC4(stream);
        FUNC7(refcount == 0, "SHCreateStreamOnFileA: expected 0, got %d\n", refcount);
    }

    stream = NULL;
    ret = FUNC5(test_file, mode | STGM_CREATE | stgm, &stream);
    FUNC7(ret == S_OK, "SHCreateStreamOnFileA: expected S_OK, got 0x%08x\n", ret);
    FUNC7(stream != NULL, "SHCreateStreamOnFileA: expected a valid IStream object, got NULL\n");

    if (stream) {
        BOOL delret;

        FUNC10(stream, mode);
        FUNC8(stream, mode);

        refcount = FUNC4(stream);
        FUNC7(refcount == 0, "SHCreateStreamOnFileA: expected 0, got %d\n", refcount);

        delret = FUNC0(test_file);
        FUNC7(delret, "SHCreateStreamOnFileA: could not delete file '%s', got error %d\n",
           test_file, FUNC1());
    }
}