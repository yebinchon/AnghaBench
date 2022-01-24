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
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_ENVVAR_NOT_FOUND ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (char const*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    WCHAR buf[256];
    BOOL ret;
    DWORD ret_size;
    static const WCHAR name[] = {'S','o','m','e','W','i','l','d','N','a','m','e',0};
    static const WCHAR value[] = {'S','o','m','e','W','i','l','d','V','a','l','u','e',0};
    static const WCHAR name_cased[] = {'s','O','M','E','w','I','L','D','n','A','M','E',0};
    static const WCHAR empty_strW[] = { 0 };
    static const WCHAR fooW[] = {'f','o','o',0};

    ret = FUNC2(name, value);
    if (ret == FALSE && FUNC1()==ERROR_CALL_NOT_IMPLEMENTED)
    {
        /* Must be Win9x which doesn't support the Unicode functions */
        FUNC8("SetEnvironmentVariableW is not implemented\n");
        return;
    }
    FUNC6(ret == TRUE,
       "unexpected error in SetEnvironmentVariableW, GetLastError=%d\n",
       FUNC1());

    /* Try to retrieve the environment variable we just set */
    ret_size = FUNC0(name, NULL, 0);
    FUNC6(ret_size == FUNC5(value) + 1,
       "should return length with terminating 0 ret_size=%d\n",
       ret_size);

    FUNC4(buf, fooW);
    ret_size = FUNC0(name, buf, FUNC5(value));
    FUNC7(FUNC3(buf, fooW) == 0 ||
         FUNC5(buf) == 0, /* Vista */
         "Expected untouched or empty buffer, got \"%s\"\n", buf);

    FUNC6(ret_size == FUNC5(value) + 1,
       "should return length with terminating 0 ret_size=%d\n", ret_size);

    FUNC4(buf, fooW);
    ret_size = FUNC0(name, buf, FUNC5(value) + 1);
    FUNC6(FUNC3(buf, value) == 0, "should touch the buffer\n");
    FUNC6(ret_size == FUNC5(value),
       "should return length without terminating 0 ret_size=%d\n", ret_size);

    FUNC4(buf, fooW);
    ret_size = FUNC0(name_cased, buf, FUNC5(value) + 1);
    FUNC6(FUNC3(buf, value) == 0, "should touch the buffer\n");
    FUNC6(ret_size == FUNC5(value),
       "should return length without terminating 0 ret_size=%d\n", ret_size);

    /* Remove that environment variable */
    ret = FUNC2(name_cased, NULL);
    FUNC6(ret == TRUE, "should erase existing variable\n");

    FUNC4(buf, fooW);
    ret_size = FUNC0(name, buf, FUNC5(value) + 1);
    FUNC6(FUNC3(buf, fooW) == 0, "should not touch the buffer\n");
    FUNC6(ret_size == 0 && FUNC1() == ERROR_ENVVAR_NOT_FOUND,
       "should not find variable but ret_size=%d GetLastError=%d\n",
       ret_size, FUNC1());

    /* Check behavior of SetEnvironmentVariableW(name, "") */
    ret = FUNC2(name, value);
    FUNC6(ret == TRUE,
       "unexpected error in SetEnvironmentVariableW, GetLastError=%d\n",
       FUNC1());

    FUNC4(buf, fooW);
    ret_size = FUNC0(name, buf, FUNC5(value) + 1);
    FUNC6(FUNC3(buf, value) == 0, "should touch the buffer\n");
    FUNC6(ret_size == FUNC5(value),
       "should return length without terminating 0 ret_size=%d\n", ret_size);

    ret = FUNC2(name_cased, empty_strW);
    FUNC6(ret == TRUE, "should not fail with empty value but GetLastError=%d\n", FUNC1());

    FUNC4(buf, fooW);
    ret_size = FUNC0(name, buf, FUNC5(value) + 1);
    FUNC6(ret_size == 0 && FUNC1() == ERROR_ENVVAR_NOT_FOUND,
       "should not find variable but ret_size=%d GetLastError=%d\n",
       ret_size, FUNC1());
    FUNC6(FUNC3(buf, empty_strW) == 0, "should copy an empty string\n");

    /* Test the limits */
    ret_size = FUNC0(NULL, NULL, 0);
    FUNC6(ret_size == 0 && FUNC1() == ERROR_ENVVAR_NOT_FOUND,
       "should not find variable but ret_size=%d GetLastError=%d\n",
       ret_size, FUNC1());

    if (0) /* Both tests crash on Vista */
    {
        ret_size = FUNC0(NULL, buf, FUNC5(value) + 1);
        FUNC6(ret_size == 0 && FUNC1() == ERROR_ENVVAR_NOT_FOUND,
           "should not find variable but ret_size=%d GetLastError=%d\n",
           ret_size, FUNC1());

        ret = FUNC2(NULL, NULL);
        FUNC6(ret == FALSE && (FUNC1() == ERROR_INVALID_PARAMETER || FUNC1() == ERROR_ENVVAR_NOT_FOUND),
           "should fail with NULL, NULL but ret=%d and GetLastError=%d\n",
           ret, FUNC1());
    }
}