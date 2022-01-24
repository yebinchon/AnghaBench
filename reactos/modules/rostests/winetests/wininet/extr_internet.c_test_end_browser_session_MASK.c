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
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  INTERNET_OPTION_END_BROWSER_SESSION ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD len;
    BOOL ret;

    ret = FUNC2("http://www.example.com/test_end", NULL, "A=B");
    FUNC4(ret == TRUE, "InternetSetCookie failed\n");

    len = 1024;
    ret = FUNC1("http://www.example.com/test_end", NULL, NULL, &len);
    FUNC4(ret == TRUE,"InternetGetCookie failed\n");
    FUNC4(len != 0, "len = 0\n");

    ret = FUNC3(NULL, INTERNET_OPTION_END_BROWSER_SESSION, NULL, 0);
    FUNC4(ret, "InternetSetOption(INTERNET_OPTION_END_BROWSER_SESSION) failed: %u\n", FUNC0());

    len = 1024;
    ret = FUNC1("http://www.example.com/test_end", NULL, NULL, &len);
    FUNC4(!ret && FUNC0() == ERROR_NO_MORE_ITEMS, "InternetGetCookie returned %x (%u)\n", ret, FUNC0());
    FUNC4(!len, "len = %u\n", len);
}