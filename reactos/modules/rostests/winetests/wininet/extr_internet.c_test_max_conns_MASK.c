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
typedef  int /*<<< orphan*/  val ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_BAD_ARGUMENTS ; 
 int ERROR_INTERNET_BAD_OPTION_LENGTH ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  INTERNET_OPTION_MAX_CONNS_PER_1_0_SERVER ; 
 int /*<<< orphan*/  INTERNET_OPTION_MAX_CONNS_PER_SERVER ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    DWORD len, val;
    BOOL res;

    len = sizeof(val);
    val = 0xdeadbeef;
    res = FUNC1(NULL, INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, &len);
    FUNC4(res,"Got wrong return value %x\n", res);
    FUNC4(len == sizeof(val), "got %d\n", len);
    FUNC5("INTERNET_OPTION_MAX_CONNS_PER_SERVER: %d\n", val);

    len = sizeof(val);
    val = 0xdeadbeef;
    res = FUNC1(NULL, INTERNET_OPTION_MAX_CONNS_PER_1_0_SERVER, &val, &len);
    FUNC4(res,"Got wrong return value %x\n", res);
    FUNC4(len == sizeof(val), "got %d\n", len);
    FUNC5("INTERNET_OPTION_MAX_CONNS_PER_1_0_SERVER: %d\n", val);

    val = 3;
    res = FUNC2(NULL, INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, sizeof(val));
    FUNC4(res, "InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER) failed: %x\n", res);

    len = sizeof(val);
    val = 0xdeadbeef;
    res = FUNC1(NULL, INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, &len);
    FUNC4(res,"Got wrong return value %x\n", res);
    FUNC4(len == sizeof(val), "got %d\n", len);
    FUNC4(val == 3, "got %d\n", val);

    val = 0;
    res = FUNC2(NULL, INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, sizeof(val));
    FUNC4(!res || FUNC3(res), /* <= w2k3 */
       "InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER, 0) succeeded\n");
    if (!res) FUNC4(FUNC0() == ERROR_BAD_ARGUMENTS, "GetLastError() = %u\n", FUNC0());

    val = 2;
    res = FUNC2(NULL, INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, sizeof(val)-1);
    FUNC4(!res, "InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER) succeeded\n");
    FUNC4(FUNC0() == ERROR_INTERNET_BAD_OPTION_LENGTH, "GetLastError() = %u\n", FUNC0());

    val = 2;
    res = FUNC2(NULL, INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, sizeof(val)+1);
    FUNC4(!res, "InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER) succeeded\n");
    FUNC4(FUNC0() == ERROR_INTERNET_BAD_OPTION_LENGTH, "GetLastError() = %u\n", FUNC0());
}