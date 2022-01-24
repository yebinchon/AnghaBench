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
typedef  int /*<<< orphan*/  vals ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int SPIF_SENDCHANGE ; 
 int SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETSCREENSAVETIMEOUT ; 
 int /*<<< orphan*/  SPI_SETSCREENSAVETIMEOUT ; 
 int /*<<< orphan*/  SPI_SETSCREENSAVETIMEOUT_REGKEY ; 
 int /*<<< orphan*/  SPI_SETSCREENSAVETIMEOUT_VALNAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int const,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int const,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10( void )      /*     14 */
{
    BOOL rc;
    UINT old_timeout;
    const UINT vals[]={0,32767};
    unsigned int i;

    FUNC9("testing SPI_{GET,SET}SCREENSAVETIMEOUT\n");
    FUNC1(0xdeadbeef);
    rc=FUNC2( SPI_GETSCREENSAVETIMEOUT, 0, &old_timeout, 0 );
    if (!FUNC7(rc,"SPI_{GET,SET}SCREENSAVETIMEOUT"))
        return;

    for (i=0;i<sizeof(vals)/sizeof(*vals);i++)
    {
        UINT v;
        char buf[10];

        rc=FUNC2( SPI_SETSCREENSAVETIMEOUT, vals[i], 0,
                               SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!FUNC7(rc,"SPI_SETSCREENSAVETIMEOUT")) return;
        FUNC4(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC6( SPI_SETSCREENSAVETIMEOUT, 0 );
        FUNC5( buf, "%d", vals[i] );
        FUNC8( SPI_SETSCREENSAVETIMEOUT_REGKEY,
                      SPI_SETSCREENSAVETIMEOUT_VALNAME, buf );

        rc = FUNC2( SPI_GETSCREENSAVETIMEOUT, 0, &v, 0 );
        FUNC4(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC3( v, vals[i], "SPI_{GET,SET}SCREENSAVETIMEOUT", "%d" );
    }

    rc=FUNC2( SPI_SETSCREENSAVETIMEOUT, old_timeout, 0,
                              SPIF_UPDATEINIFILE );
    FUNC4(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
}