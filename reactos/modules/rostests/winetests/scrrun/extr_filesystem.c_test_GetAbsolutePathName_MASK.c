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
typedef  int /*<<< orphan*/  WIN32_FIND_DATAW ;
typedef  char WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  char* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,char**) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ S_OK ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

__attribute__((used)) static void FUNC13(void)
{
    static const WCHAR dir1[] = {'t','e','s','t','_','d','i','r','1',0};
    static const WCHAR dir2[] = {'t','e','s','t','_','d','i','r','2',0};
    static const WCHAR dir_match1[] = {'t','e','s','t','_','d','i','r','*',0};
    static const WCHAR dir_match2[] = {'t','e','s','t','_','d','i','*',0};
    static const WCHAR cur_dir[] = {'.',0};

    WIN32_FIND_DATAW fdata;
    HANDLE find;
    WCHAR buf[MAX_PATH], buf2[MAX_PATH];
    BSTR path, result;
    HRESULT hr;

    hr = FUNC4(fs3, NULL, NULL);
    FUNC10(hr == E_POINTER, "GetAbsolutePathName returned %x, expected E_POINTER\n", hr);

    hr = FUNC4(fs3, NULL, &result);
    FUNC10(hr == S_OK, "GetAbsolutePathName returned %x, expected S_OK\n", hr);
    FUNC3(cur_dir, MAX_PATH, buf, NULL);
    FUNC10(!FUNC9(buf, result), "result = %s, expected %s\n", FUNC12(result), FUNC12(buf));
    FUNC7(result);

    find = FUNC2(dir_match2, &fdata);
    if(find != INVALID_HANDLE_VALUE) {
        FUNC11("GetAbsolutePathName tests\n");
        FUNC1(find);
        return;
    }

    path = FUNC6(dir_match1);
    hr = FUNC4(fs3, path, &result);
    FUNC10(hr == S_OK, "GetAbsolutePathName returned %x, expected S_OK\n", hr);
    FUNC3(dir_match1, MAX_PATH, buf2, NULL);
    FUNC10(!FUNC9(buf2, result), "result = %s, expected %s\n", FUNC12(result), FUNC12(buf2));
    FUNC7(result);

    FUNC10(FUNC0(dir1, NULL), "CreateDirectory(%s) failed\n", FUNC12(dir1));
    hr = FUNC4(fs3, path, &result);
    FUNC10(hr == S_OK, "GetAbsolutePathName returned %x, expected S_OK\n", hr);
    FUNC3(dir1, MAX_PATH, buf, NULL);
    FUNC10(!FUNC9(buf, result) || FUNC8(!FUNC9(buf2, result)), "result = %s, expected %s\n",
                FUNC12(result), FUNC12(buf));
    FUNC7(result);

    FUNC10(FUNC0(dir2, NULL), "CreateDirectory(%s) failed\n", FUNC12(dir2));
    hr = FUNC4(fs3, path, &result);
    FUNC10(hr == S_OK, "GetAbsolutePathName returned %x, expected S_OK\n", hr);
    if(!FUNC9(buf, result) || !FUNC9(buf2, result)) {
        FUNC10(!FUNC9(buf, result) || FUNC8(!FUNC9(buf2, result)), "result = %s, expected %s\n",
                FUNC12(result), FUNC12(buf));
    }else {
        FUNC3(dir2, MAX_PATH, buf, NULL);
        FUNC10(!FUNC9(buf, result), "result = %s, expected %s\n",
                FUNC12(result), FUNC12(buf));
    }
    FUNC7(result);

    FUNC7(path);
    path = FUNC6(dir_match2);
    hr = FUNC4(fs3, path, &result);
    FUNC10(hr == S_OK, "GetAbsolutePathName returned %x, expected S_OK\n", hr);
    FUNC3(dir_match2, MAX_PATH, buf, NULL);
    FUNC10(!FUNC9(buf, result), "result = %s, expected %s\n", FUNC12(result), FUNC12(buf));
    FUNC7(result);
    FUNC7(path);

    FUNC5(dir1);
    FUNC5(dir2);
}