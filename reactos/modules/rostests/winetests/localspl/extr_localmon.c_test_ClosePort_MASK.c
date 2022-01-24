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
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__* have_com ; 
 scalar_t__* have_file ; 
 scalar_t__* have_lpt ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    HANDLE  hPort;
    HANDLE  hPort2;
    LPWSTR  nameW = NULL;
    DWORD   res;
    DWORD   res2;


    if (!&pOpenPort || !&pClosePort) return;

    if (have_com[0]) {
        nameW = have_com;

        hPort = (HANDLE) 0xdeadbeef;
        res = FUNC4(nameW, &hPort);
        hPort2 = (HANDLE) 0xdeadbeef;
        res2 = FUNC4(nameW, &hPort2);

        if (res2 && (hPort2 != hPort)) {
            FUNC1(0xdeadbeef);
            res2 = FUNC3(hPort2);
            FUNC2(res2, "got %u with %u (expected '!= 0')\n", res2, FUNC0());
        }

        if (res) {
            FUNC1(0xdeadbeef);
            res = FUNC3(hPort);
            FUNC2(res, "got %u with %u (expected '!= 0')\n", res, FUNC0());
        }
    }


    if (have_lpt[0]) {
        nameW = have_lpt;

        hPort = (HANDLE) 0xdeadbeef;
        res = FUNC4(nameW, &hPort);
        hPort2 = (HANDLE) 0xdeadbeef;
        res2 = FUNC4(nameW, &hPort2);

        if (res2 && (hPort2 != hPort)) {
            FUNC1(0xdeadbeef);
            res2 = FUNC3(hPort2);
            FUNC2(res2, "got %u with %u (expected '!= 0')\n", res2, FUNC0());
        }

        if (res) {
            FUNC1(0xdeadbeef);
            res = FUNC3(hPort);
            FUNC2(res, "got %u with %u (expected '!= 0')\n", res, FUNC0());
        }
    }


    if (have_file[0]) {
        nameW = have_file;

        hPort = (HANDLE) 0xdeadbeef;
        res = FUNC4(nameW, &hPort);
        hPort2 = (HANDLE) 0xdeadbeef;
        res2 = FUNC4(nameW, &hPort2);

        if (res2 && (hPort2 != hPort)) {
            FUNC1(0xdeadbeef);
            res2 = FUNC3(hPort2);
            FUNC2(res2, "got %u with %u (expected '!= 0')\n", res2, FUNC0());
        }

        if (res) {
            FUNC1(0xdeadbeef);
            res = FUNC3(hPort);
            FUNC2(res, "got %u with %u (expected '!= 0')\n", res, FUNC0());
        }

    }

    if (0) {
        /* an invalid HANDLE crash native localspl.dll */

        FUNC1(0xdeadbeef);
        res = FUNC3(NULL);
        FUNC5("got %u with %u\n", res, FUNC0());

        FUNC1(0xdeadbeef);
        res = FUNC3( (HANDLE) 0xdeadbeef);
        FUNC5("got %u with %u\n", res, FUNC0());

        FUNC1(0xdeadbeef);
        res = FUNC3(INVALID_HANDLE_VALUE);
        FUNC5("got %u with %u\n", res, FUNC0());
    }

}