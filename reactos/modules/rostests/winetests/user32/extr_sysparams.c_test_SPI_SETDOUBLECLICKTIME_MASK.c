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
typedef  int UINT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int SPIF_SENDCHANGE ; 
 int SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_SETDOUBLECLICKTIME ; 
 int /*<<< orphan*/  SPI_SETDOUBLECLICKTIME_REGKEY ; 
 int /*<<< orphan*/  SPI_SETDOUBLECLICKTIME_VALNAME ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12( void )        /*     32 */
{
    BOOL rc;
    UINT curr_val;
    UINT saved_val;
    UINT old_time;
    char buf[10];

    FUNC11("testing SPI_{GET,SET}DOUBLECLICKTIME\n");
    old_time = FUNC0();

    curr_val = 0;
    FUNC3(0xdeadbeef);
    rc=FUNC4( SPI_SETDOUBLECLICKTIME, curr_val, 0,
                              SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    if (!FUNC9(rc,"SPI_{GET,SET}DOUBLECLICKTIME"))
        return;

    FUNC8( SPI_SETDOUBLECLICKTIME, 0 );
    FUNC7( buf, "%d", curr_val );
    FUNC10( SPI_SETDOUBLECLICKTIME_REGKEY,
                  SPI_SETDOUBLECLICKTIME_VALNAME, buf );
    curr_val = 500; /* used value for 0 */
    FUNC5( FUNC0(), curr_val, "GetDoubleClickTime", "%d" );

    curr_val = 1000;
    rc=FUNC4( SPI_SETDOUBLECLICKTIME, curr_val, 0,
                             SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    FUNC6(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, FUNC1());
    FUNC8( SPI_SETDOUBLECLICKTIME, 0 );
    FUNC7( buf, "%d", curr_val );
    FUNC10( SPI_SETDOUBLECLICKTIME_REGKEY,
                  SPI_SETDOUBLECLICKTIME_VALNAME, buf );
    FUNC5( FUNC0(), curr_val, "GetDoubleClickTime", "%d" );

    saved_val = curr_val;

    curr_val = 0;
    FUNC2( curr_val );
    FUNC7( buf, "%d", saved_val );
    FUNC10( SPI_SETDOUBLECLICKTIME_REGKEY,
                  SPI_SETDOUBLECLICKTIME_VALNAME, buf );
    curr_val = 500; /* used value for 0 */
    FUNC5( FUNC0(), curr_val, "GetDoubleClickTime", "%d" );

    curr_val = 1000;
    FUNC2( curr_val );
    FUNC7( buf, "%d", saved_val );
    FUNC10( SPI_SETDOUBLECLICKTIME_REGKEY,
                  SPI_SETDOUBLECLICKTIME_VALNAME, buf );
    FUNC5( FUNC0(), curr_val, "GetDoubleClickTime", "%d" );

    rc=FUNC4(SPI_SETDOUBLECLICKTIME, old_time, 0, SPIF_UPDATEINIFILE);
    FUNC6(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC1());
}