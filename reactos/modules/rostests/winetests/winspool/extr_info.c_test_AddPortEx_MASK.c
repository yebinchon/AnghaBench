#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fPortType; int /*<<< orphan*/  pDescription; int /*<<< orphan*/ * pMonitorName; int /*<<< orphan*/ * pPortName; } ;
typedef  TYPE_1__ PORT_INFO_2A ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ ERROR_INVALID_LEVEL ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * LocalPortA ; 
 int /*<<< orphan*/  PORT_TYPE_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * does_not_exist ; 
 int /*<<< orphan*/ * empty ; 
 scalar_t__ FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* tempfileA ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  winetest ; 

__attribute__((used)) static void FUNC8(void)
{
    PORT_INFO_2A pi;
    DWORD   res;


    if (!&pAddPortExA) {
        FUNC7("AddPortEx not supported\n");
        return;
    }

    /* start test with a clean system */
    FUNC0(NULL, 0, tempfileA);

    pi.pPortName = tempfileA;
    FUNC2(0xdeadbeef);
    res = FUNC5(NULL, 1, (LPBYTE) &pi, LocalPortA);
    if (FUNC3(res, FUNC1())) return;

    /* Allowed only for (Printer-)Administrators.
       W2K+XP: ERROR_INVALID_PARAMETER  */
    if (!res && (FUNC1() == ERROR_INVALID_PARAMETER)) {
        FUNC6("ACCESS_DENIED (ERROR_INVALID_PARAMETER)\n");
        return;
    }
    FUNC4( res, "got %u with %u (expected '!= 0')\n", res, FUNC1());

    /* add a port that already exists */
    FUNC2(0xdeadbeef);
    res = FUNC5(NULL, 1, (LPBYTE) &pi, LocalPortA);
    FUNC4( !res && (FUNC1() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, FUNC1());
    FUNC0(NULL, 0, tempfileA);


    /* the Monitorname must match */
    FUNC2(0xdeadbeef);
    res = FUNC5(NULL, 1, (LPBYTE) &pi, NULL);
    FUNC4( !res && (FUNC1() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, FUNC1());
    if (res) FUNC0(NULL, 0, tempfileA);

    FUNC2(0xdeadbeef);
    res = FUNC5(NULL, 1, (LPBYTE) &pi, empty);
    FUNC4( !res && (FUNC1() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, FUNC1());
    if (res) FUNC0(NULL, 0, tempfileA);

    FUNC2(0xdeadbeef);
    res = FUNC5(NULL, 1, (LPBYTE) &pi, does_not_exist);
    FUNC4( !res && (FUNC1() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, FUNC1());
    if (res) FUNC0(NULL, 0, tempfileA);


    /* We need a Portname */
    FUNC2(0xdeadbeef);
    res = FUNC5(NULL, 1, NULL, LocalPortA);
    FUNC4( !res && (FUNC1() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, FUNC1());

    pi.pPortName = NULL;
    FUNC2(0xdeadbeef);
    res = FUNC5(NULL, 1, (LPBYTE) &pi, LocalPortA);
    FUNC4( !res && (FUNC1() == ERROR_INVALID_PARAMETER),
        "got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\n",
        res, FUNC1());
    if (res) FUNC0(NULL, 0, tempfileA);


    /*  level 2 is documented as supported for Printmonitors,
        but that is not supported for "Local Port" (localspl.dll) and
        AddPortEx fails with ERROR_INVALID_LEVEL */

    pi.pPortName = tempfileA;
    pi.pMonitorName = LocalPortA;
    pi.pDescription = winetest;
    pi.fPortType = PORT_TYPE_WRITE;

    FUNC2(0xdeadbeef);
    res = FUNC5(NULL, 2, (LPBYTE) &pi, LocalPortA);
    FUNC4( !res && (FUNC1() == ERROR_INVALID_LEVEL),
        "got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\n",
        res, FUNC1());
    if (res) FUNC0(NULL, 0, tempfileA);


    /* invalid levels */
    FUNC2(0xdeadbeef);
    res = FUNC5(NULL, 0, (LPBYTE) &pi, LocalPortA);
    FUNC4( !res && (FUNC1() == ERROR_INVALID_LEVEL),
        "got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\n",
        res, FUNC1());

    FUNC2(0xdeadbeef);
    res = FUNC5(NULL, 3, (LPBYTE) &pi, LocalPortA);
    FUNC4( !res && (FUNC1() == ERROR_INVALID_LEVEL),
        "got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\n",
        res, FUNC1());


    /* cleanup */
    FUNC0(NULL, 0, tempfileA);

}