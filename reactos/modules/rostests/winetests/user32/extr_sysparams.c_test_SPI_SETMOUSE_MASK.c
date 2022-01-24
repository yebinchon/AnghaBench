#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  req_change ;
struct TYPE_4__ {int member_0; int member_1; } ;
typedef  TYPE_1__ POINT ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETMOUSE ; 
 int /*<<< orphan*/  SPI_SETMOUSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7( void )                  /*      4 */
{
    BOOL rc;
    INT old_mi[3];

    /* win nt default values - 6, 10, 1 */
    INT curr_val[3] = {6, 10, 1};

    /* requested and projected mouse movements */
    POINT req_change[] =   { {6, 6}, { 7, 6}, { 8, 6}, {10, 10}, {11, 10}, {100, 100} };
    POINT proj_change1[] = { {6, 6}, {14, 6}, {16, 6}, {20, 20}, {22, 20}, {200, 200} };
    POINT proj_change2[] = { {6, 6}, {14, 6}, {16, 6}, {20, 20}, {44, 20}, {400, 400} };
    POINT proj_change3[] = { {6, 6}, {14, 6}, {16, 6}, {20, 20}, {22, 20}, {200, 200} };
    POINT proj_change4[] = { {6, 6}, { 7, 6}, { 8, 6}, {10, 10}, {11, 10}, {100, 100} };
    POINT proj_change5[] = { {6, 6}, { 7, 6}, {16, 6}, {20, 20}, {22, 20}, {200, 200} };
    POINT proj_change6[] = { {6, 6}, {28, 6}, {32, 6}, {40, 40}, {44, 40}, {400, 400} };
    POINT proj_change7[] = { {6, 6}, {14, 6}, {32, 6}, {40, 40}, {44, 40}, {400, 400} };
    POINT proj_change8[] = { {6, 6}, {28, 6}, {32, 6}, {40, 40}, {44, 40}, {400, 400} };

    int nchange = sizeof( req_change ) / sizeof( POINT );

    FUNC6("testing SPI_{GET,SET}MOUSE\n");
    FUNC1(0xdeadbeef);
    rc=FUNC2( SPI_GETMOUSE, 0, old_mi, 0 );
    if (!FUNC5(rc,"SPI_{GET,SET}MOUSE"))
        return;

    if (!FUNC4( curr_val, req_change, proj_change1, nchange )) return;

    /* acceleration change */
    curr_val[2] = 2;
    FUNC4( curr_val, req_change, proj_change2, nchange );

    /* acceleration change */
    curr_val[2] = 3;
    FUNC4( curr_val, req_change, proj_change3, nchange );

    /* acceleration change */
    curr_val[2] = 0;
    FUNC4( curr_val, req_change, proj_change4, nchange );

    /* threshold change */
    curr_val[2] = 1;
    curr_val[0] = 7;
    FUNC4( curr_val, req_change, proj_change5, nchange );

    /* threshold change */
    curr_val[2] = 2;
    curr_val[0] = 6;
    curr_val[1] = 6;
    FUNC4( curr_val, req_change, proj_change6, nchange );

    /* threshold change */
    curr_val[1] = 7;
    FUNC4( curr_val, req_change, proj_change7, nchange );

    /* threshold change */
    curr_val[1] = 5;
    FUNC4( curr_val, req_change, proj_change8, nchange );

    rc=FUNC2( SPI_SETMOUSE, 0, old_mi, SPIF_UPDATEINIFILE );
    FUNC3(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
}