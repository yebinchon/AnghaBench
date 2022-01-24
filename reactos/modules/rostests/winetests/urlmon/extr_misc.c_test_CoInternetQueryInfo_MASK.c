#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int uses_net; int /*<<< orphan*/  url; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  QUERY_USES_NETWORK ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 TYPE_1__* query_info_tests ; 

__attribute__((used)) static void FUNC4(void)
{
    BYTE buf[100];
    DWORD cb, i;
    HRESULT hres;

    for(i = 0; i < FUNC0(query_info_tests); i++) {
        cb = 0xdeadbeef;
        FUNC1(buf, '?', sizeof(buf));
        hres = FUNC3(query_info_tests[0].url, QUERY_USES_NETWORK, 0, buf, sizeof(buf), &cb, 0);
        FUNC2(hres == S_OK, "[%d] CoInternetQueryInfo failed: %08x\n", i, hres);
        FUNC2(cb == sizeof(DWORD), "[%d] cb = %d\n", i, cb);
        FUNC2(*(DWORD*)buf == query_info_tests[i].uses_net, "[%d] ret %x, expected %x\n",
           i, *(DWORD*)buf, query_info_tests[i].uses_net);

        hres = FUNC3(query_info_tests[0].url, QUERY_USES_NETWORK, 0, buf, 3, &cb, 0);
        FUNC2(hres == E_FAIL, "[%d] CoInternetQueryInfo failed: %08x, expected E_FAIL\n", i, hres);
        hres = FUNC3(query_info_tests[0].url, QUERY_USES_NETWORK, 0, NULL, sizeof(buf), &cb, 0);
        FUNC2(hres == E_FAIL, "[%d] CoInternetQueryInfo failed: %08x, expected E_FAIL\n", i, hres);

        FUNC1(buf, '?', sizeof(buf));
        hres = FUNC3(query_info_tests[0].url, QUERY_USES_NETWORK, 0, buf, sizeof(buf), NULL, 0);
        FUNC2(hres == S_OK, "[%d] CoInternetQueryInfo failed: %08x\n", i, hres);
        FUNC2(*(DWORD*)buf == query_info_tests[i].uses_net, "[%d] ret %x, expected %x\n",
           i, *(DWORD*)buf, query_info_tests[i].uses_net);
    }
}