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
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__* does_not_existW ; 
 scalar_t__* emptyW ; 
 scalar_t__* have_com ; 
 scalar_t__* have_file ; 
 scalar_t__* have_lpt ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__,scalar_t__) ; 

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
        FUNC1(0xdeadbeef);
        res = FUNC4(nameW, &hPort);
        FUNC2( res, "got %u with %u and %p (expected '!= 0')\n",
            res, FUNC0(), hPort);

        /* the same HANDLE is returned for a second OpenPort in native localspl */
        hPort2 = (HANDLE) 0xdeadbeef;
        FUNC1(0xdeadbeef);
        res2 = FUNC4(nameW, &hPort2);
        FUNC2( res2, "got %u with %u and %p (expected '!= 0')\n",
            res2, FUNC0(), hPort2);

        if (res) FUNC3(hPort);
        if (res2 && (hPort2 != hPort)) FUNC3(hPort2);
    }

    if (have_lpt[0]) {
        nameW = have_lpt;

        hPort = (HANDLE) 0xdeadbeef;
        FUNC1(0xdeadbeef);
        res = FUNC4(nameW, &hPort);
        FUNC2( res || (FUNC0() == ERROR_ACCESS_DENIED),
            "got %u with %u and %p (expected '!= 0' or '0' with ERROR_ACCESS_DENIED)\n",
            res, FUNC0(), hPort);

        /* the same HANDLE is returned for a second OpenPort in native localspl */
        hPort2 = (HANDLE) 0xdeadbeef;
        FUNC1(0xdeadbeef);
        res2 = FUNC4(nameW, &hPort2);
        FUNC2( res2 || (FUNC0() == ERROR_ACCESS_DENIED),
            "got %u with %u and %p (expected '!= 0' or '0' with ERROR_ACCESS_DENIED)\n",
            res2, FUNC0(), hPort2);

        if (res) FUNC3(hPort);
        if (res2 && (hPort2 != hPort)) FUNC3(hPort2);
    }

    if (have_file[0]) {
        nameW = have_file;

        hPort = (HANDLE) 0xdeadbeef;
        FUNC1(0xdeadbeef);
        res = FUNC4(nameW, &hPort);
        FUNC2( res, "got %u with %u and %p (expected '!= 0')\n",
            res, FUNC0(), hPort);

        /* a different HANDLE is returned for a second OpenPort */
        hPort2 = (HANDLE) 0xdeadbeef;
        FUNC1(0xdeadbeef);
        res2 = FUNC4(nameW, &hPort2);
        FUNC2( res2 && (hPort2 != hPort),
            "got %u with %u and %p (expected '!= 0' and '!= %p')\n",
            res2, FUNC0(), hPort2, hPort);

        if (res) FUNC3(hPort);
        if (res2 && (hPort2 != hPort)) FUNC3(hPort2);
    }

    if (0) {
        /* this test crash native localspl (w2k+xp) */
        if (nameW) {
            hPort = (HANDLE) 0xdeadbeef;
            FUNC1(0xdeadbeef);
            res = FUNC4(nameW, NULL);
            FUNC5("got %u with %u and %p\n", res, FUNC0(), hPort);
        }
    }

    hPort = (HANDLE) 0xdeadbeef;
    FUNC1(0xdeadbeef);
    res = FUNC4(does_not_existW, &hPort);
    FUNC2 (!res && (hPort == (HANDLE) 0xdeadbeef),
        "got %u with 0x%x and %p (expected '0' and 0xdeadbeef)\n", res, FUNC0(), hPort);
    if (res) FUNC3(hPort);

    hPort = (HANDLE) 0xdeadbeef;
    FUNC1(0xdeadbeef);
    res = FUNC4(emptyW, &hPort);
    FUNC2 (!res && (hPort == (HANDLE) 0xdeadbeef),
        "got %u with 0x%x and %p (expected '0' and 0xdeadbeef)\n", res, FUNC0(), hPort);
    if (res) FUNC3(hPort);


    /* NULL as name crash native localspl (w2k+xp) */
    if (0) {
        hPort = (HANDLE) 0xdeadbeef;
        FUNC1(0xdeadbeef);
        res = FUNC4(NULL, &hPort);
        FUNC5("got %u with %u and %p\n", res, FUNC0(), hPort);
    }

}