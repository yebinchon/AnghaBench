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
typedef  int /*<<< orphan*/  strW ;
typedef  int /*<<< orphan*/  strA ;
typedef  int /*<<< orphan*/  buf ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    static const WCHAR strW[] = {'j','u','s','t',' ','a',' ','t','e','s','t',0};
    static const char strA[] = "just a test";
    char buf[256];
    int ret;

    FUNC1(0xdeadbeef);
    FUNC4(buf + 1, strW, sizeof(strW));
    ret = FUNC2(CP_ACP, 0, (WCHAR *)(buf + 1), -1, buf, sizeof(buf), NULL, NULL);
    FUNC5(ret == sizeof(strA), "unexpected ret %d\n", ret);
    FUNC5(!FUNC3(buf, strA, sizeof(strA)), "conversion failed: %s\n", buf);
    FUNC5(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());
}