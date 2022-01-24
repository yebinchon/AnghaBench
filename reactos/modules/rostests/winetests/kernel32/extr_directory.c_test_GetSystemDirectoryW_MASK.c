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
typedef  float WCHAR ;
typedef  int UINT ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (float*,int) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC2 (float*,float const*) ; 
 int /*<<< orphan*/  FUNC3 (float*,float const*) ; 
 int FUNC4 (float*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    UINT len, len_with_null;
    WCHAR buf[MAX_PATH];
    static const WCHAR fooW[] = {'f','o','o',0};

    len_with_null = FUNC1(NULL, 0);
    if (len_with_null == 0 && FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC6("GetSystemDirectoryW is not available\n");
        return;
    }
    FUNC5(len_with_null <= MAX_PATH, "should fit into MAX_PATH\n");

    FUNC3(buf, fooW);
    len = FUNC1(buf, 1);
    FUNC5(FUNC2(buf, fooW) == 0, "should not touch the buffer\n");
    FUNC5(len == len_with_null, "GetSystemDirectoryW returned %d, expected %d\n",
       len, len_with_null);

    FUNC3(buf, fooW);
    len = FUNC1(buf, len_with_null - 1);
    FUNC5(FUNC2(buf, fooW) == 0, "should not touch the buffer\n");
    FUNC5(len == len_with_null, "GetSystemDirectoryW returned %d, expected %d\n",
       len, len_with_null);

    FUNC3(buf, fooW);
    len = FUNC1(buf, len_with_null);
    FUNC5(FUNC2(buf, fooW) != 0, "should touch the buffer\n");
    FUNC5(len == FUNC4(buf), "returned length should be equal to the length of string\n");
    FUNC5(len == len_with_null-1, "GetSystemDirectoryW returned %d, expected %d\n",
       len, len_with_null-1);
}