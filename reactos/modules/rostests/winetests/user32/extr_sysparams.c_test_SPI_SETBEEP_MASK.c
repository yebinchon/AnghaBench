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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  MB_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SPIF_SENDCHANGE ; 
 int SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETBEEP ; 
 int /*<<< orphan*/  SPI_SETBEEP ; 
 int /*<<< orphan*/  SPI_SETBEEP_REGKEY ; 
 int /*<<< orphan*/  SPI_SETBEEP_VALNAME ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11( void )                   /*      2 */
{
    BOOL rc;
    BOOL old_b;
    BOOL b;
    BOOL curr_val;

    FUNC10("testing SPI_{GET,SET}BEEP\n");
    FUNC2(0xdeadbeef);
    rc=FUNC3( SPI_GETBEEP, 0, &old_b, 0 );
    if (!FUNC8(rc,"SPI_{GET,SET}BEEP"))
        return;

    curr_val = TRUE;
    rc=FUNC3( SPI_SETBEEP, curr_val, 0, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    if (!FUNC8(rc,"SPI_SETBEEP")) return;
    FUNC6(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, FUNC0());
    FUNC7( SPI_SETBEEP, 0 );
    FUNC9( SPI_SETBEEP_REGKEY,
                  SPI_SETBEEP_VALNAME,
                  curr_val ? "Yes" : "No" );
    rc=FUNC3( SPI_GETBEEP, 0, &b, 0 );
    FUNC6(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, FUNC0());
    FUNC5( b, curr_val, "SPI_{GET,SET}BEEP", "%d" );
    rc=FUNC4( SPI_GETBEEP, 0, &b, 0 );
    if (rc || FUNC0() != ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC6(rc, "SystemParametersInfoW: rc=%d err=%d\n", rc, FUNC0());
        FUNC5( b, curr_val, "SystemParametersInfoW", "%d" );
    }

    /* is a message sent for the second change? */
    rc=FUNC3( SPI_SETBEEP, curr_val, 0, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    FUNC6(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, FUNC0());
    FUNC7( SPI_SETBEEP, 0 );

    curr_val = FALSE;
    rc=FUNC4( SPI_SETBEEP, curr_val, 0, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    if (rc == FALSE && FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
        rc=FUNC3( SPI_SETBEEP, curr_val, 0, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    FUNC6(rc, "SystemParametersInfo: rc=%d err=%d\n", rc, FUNC0());
    FUNC7( SPI_SETBEEP, 0 );
    FUNC9( SPI_SETBEEP_REGKEY,
                  SPI_SETBEEP_VALNAME,
                  curr_val ? "Yes" : "No" );
    rc=FUNC3( SPI_GETBEEP, 0, &b, 0 );
    FUNC6(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, FUNC0());
    FUNC5( b, curr_val, "SPI_{GET,SET}BEEP", "%d" );
    rc=FUNC4( SPI_GETBEEP, 0, &b, 0 );
    if (rc || FUNC0() != ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC6(rc, "SystemParametersInfoW: rc=%d err=%d\n", rc, FUNC0());
        FUNC5( b, curr_val, "SystemParametersInfoW", "%d" );
    }
    FUNC6( FUNC1( MB_OK ), "Return value of MessageBeep when sound is disabled\n" );

    rc=FUNC3( SPI_SETBEEP, old_b, 0, SPIF_UPDATEINIFILE );
    FUNC6(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
}