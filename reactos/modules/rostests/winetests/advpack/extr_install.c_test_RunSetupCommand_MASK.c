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
typedef  int /*<<< orphan*/  systemdir ;
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 char* CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ERROR_DIRECTORY ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int RSC_FLAG_INF ; 
 int RSC_FLAG_QUIET ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ S_ASYNCHRONOUS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
    HRESULT hr;
    HANDLE hexe;
    char path[MAX_PATH];
    char dir[MAX_PATH];
    char systemdir[MAX_PATH];

    FUNC2(systemdir, sizeof(systemdir));

    /* try an invalid cmd name */
    hr = FUNC11(NULL, NULL, "Install", "Dir", "Title", NULL, 0, NULL);
    FUNC10(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %d\n", hr);

    /* try an invalid directory */
    hr = FUNC11(NULL, "winver.exe", "Install", NULL, "Title", NULL, 0, NULL);
    FUNC10(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %d\n", hr);

    /* try to run a nonexistent exe */
#ifdef __REACTOS__
    hexe = (HANDLE)(ULONG_PTR)0xdeadbeefdeadbeefull;
#else
    hexe = (HANDLE)0xdeadbeef;
#endif
    hr = FUNC11(NULL, "idontexist.exe", "Install", systemdir, "Title", &hexe, 0, NULL);
    FUNC10(hr == FUNC3(ERROR_FILE_NOT_FOUND),
       "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\n", hr);
    FUNC10(hexe == NULL, "Expected hexe to be NULL\n");
    FUNC10(!FUNC5(hexe, 0), "Expected TerminateProcess to fail\n");

    /* try a bad directory */
#ifdef __REACTOS__
    hexe = (HANDLE)(ULONG_PTR)0xdeadbeefdeadbeefull;
#else
    hexe = (HANDLE)0xdeadbeef;
#endif
    hr = FUNC11(NULL, "winver.exe", "Install", "non\\existent\\directory", "Title", &hexe, 0, NULL);
    FUNC10(hr == FUNC3(ERROR_DIRECTORY),
       "Expected HRESULT_FROM_WIN32(ERROR_DIRECTORY), got %d\n", hr);
    FUNC10(hexe == NULL, "Expected hexe to be NULL\n");
    FUNC10(!FUNC5(hexe, 0), "Expected TerminateProcess to fail\n");

    /* try to run an exe with the RSC_FLAG_INF flag */
#ifdef __REACTOS__
    hexe = (HANDLE)(ULONG_PTR)0xdeadbeefdeadbeefull;
#else
    hexe = (HANDLE)0xdeadbeef;
#endif
    hr = FUNC11(NULL, "winver.exe", "Install", systemdir, "Title", &hexe, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(FUNC7(hr), "Expected a setupapi error, got %d\n", hr);
#ifdef __REACTOS__
    ok(hexe == (HANDLE)(ULONG_PTR)0xdeadbeefdeadbeefull, "Expected hexe to be 0xdeadbeef\n");
#else
    FUNC10(hexe == (HANDLE)0xdeadbeef, "Expected hexe to be 0xdeadbeef\n");
#endif
    FUNC10(!FUNC5(hexe, 0), "Expected TerminateProcess to fail\n");

    /* run winver.exe */
#ifdef __REACTOS__
    hexe = (HANDLE)(ULONG_PTR)0xdeadbeefdeadbeefull;
#else
    hexe = (HANDLE)0xdeadbeef;
#endif
    hr = FUNC11(NULL, "winver.exe", "Install", systemdir, "Title", &hexe, 0, NULL);
    FUNC10(hr == S_ASYNCHRONOUS, "Expected S_ASYNCHRONOUS, got %d\n", hr);
    FUNC10(hexe != NULL, "Expected hexe to be non-NULL\n");
    FUNC10(FUNC5(hexe, 0), "Expected TerminateProcess to succeed\n");

    FUNC0("one", NULL);
    FUNC6("one\\test.inf");

    /* try a full path to the INF, with working dir provided */
    FUNC9(path, CURR_DIR);
    FUNC8(path, "\\one\\test.inf");
    FUNC9(dir, CURR_DIR);
    FUNC8(dir, "\\one");
    hr = FUNC11(NULL, path, "DefaultInstall", dir, "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", hr);

    /* try a full path to the INF, NULL working dir */
    hr = FUNC11(NULL, path, "DefaultInstall", NULL, "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == FUNC3(ERROR_INVALID_PARAMETER),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got %d\n", hr);

    /* try a full path to the INF, empty working dir */
    hr = FUNC11(NULL, path, "DefaultInstall", "", "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", hr);

    /* try a relative path to the INF, with working dir provided */
    hr = FUNC11(NULL, "one\\test.inf", "DefaultInstall", dir, "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", hr);

    /* try a relative path to the INF, NULL working dir */
    hr = FUNC11(NULL, "one\\test.inf", "DefaultInstall", NULL, "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == FUNC3(ERROR_INVALID_PARAMETER),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got %d\n", hr);

    /* try a relative path to the INF, empty working dir */
    hr = FUNC11(NULL, "one\\test.inf", "DefaultInstall", "", "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", hr);

    /* try only the INF filename, with working dir provided */
    hr = FUNC11(NULL, "test.inf", "DefaultInstall", dir, "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == FUNC3(ERROR_FILE_NOT_FOUND), "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\n", hr);

    /* try only the INF filename, NULL working dir */
    hr = FUNC11(NULL, "test.inf", "DefaultInstall", NULL, "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == FUNC3(ERROR_INVALID_PARAMETER),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got %d\n", hr);

    /* try only the INF filename, empty working dir */
    hr = FUNC11(NULL, "test.inf", "DefaultInstall", "", "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == FUNC3(ERROR_FILE_NOT_FOUND), "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\n", hr);

    FUNC1("one\\test.inf");
    FUNC4("one");

    FUNC6("test.inf");

    /* try INF file in the current directory, working directory provided */
    hr = FUNC11(NULL, "test.inf", "DefaultInstall", CURR_DIR, "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == FUNC3(ERROR_FILE_NOT_FOUND), "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\n", hr);

    /* try INF file in the current directory, NULL working directory */
    hr = FUNC11(NULL, "test.inf", "DefaultInstall", NULL, "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == FUNC3(ERROR_INVALID_PARAMETER),
       "Expected HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got %d\n", hr);

    /* try INF file in the current directory, empty working directory */
    hr = FUNC11(NULL, "test.inf", "DefaultInstall", CURR_DIR, "Title", NULL, RSC_FLAG_INF | RSC_FLAG_QUIET, NULL);
    FUNC10(hr == FUNC3(ERROR_FILE_NOT_FOUND), "Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\n", hr);
}