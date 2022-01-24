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
typedef  int const UINT ;
typedef  int BOOL ;

/* Variables and functions */
 int const FALSE ; 
 int const FUNC0 () ; 
 int SPIF_SENDCHANGE ; 
 int SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETSCREENSAVEACTIVE ; 
 int /*<<< orphan*/  SPI_SETSCREENSAVEACTIVE ; 
 int /*<<< orphan*/  SPI_SETSCREENSAVEACTIVE_REGKEY ; 
 int /*<<< orphan*/  SPI_SETSCREENSAVEACTIVE_VALNAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int const,int const*,int) ; 
 int const TRUE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int const,int const,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9( void )       /*     17 */
{
    BOOL rc;
    BOOL old_b;
    const UINT vals[]={TRUE,FALSE};
    unsigned int i;

    FUNC8("testing SPI_{GET,SET}SCREENSAVEACTIVE\n");
    FUNC1(0xdeadbeef);
    rc=FUNC2( SPI_GETSCREENSAVEACTIVE, 0, &old_b, 0 );
    if (!FUNC6(rc,"SPI_{GET,SET}SCREENSAVEACTIVE"))
        return;

    for (i=0;i<sizeof(vals)/sizeof(*vals);i++)
    {
        UINT v;

        rc=FUNC2( SPI_SETSCREENSAVEACTIVE, vals[i], 0,
                                  SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!FUNC6(rc,"SPI_SETSCREENSAVEACTIVE")) return;
        FUNC4(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC5( SPI_SETSCREENSAVEACTIVE, 0 );
        FUNC7( SPI_SETSCREENSAVEACTIVE_REGKEY,
                      SPI_SETSCREENSAVEACTIVE_VALNAME,
                      vals[i] ? "1" : "0" );

        rc=FUNC2( SPI_GETSCREENSAVEACTIVE, 0, &v, 0 );
        FUNC4(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC4(v == vals[i] || FUNC3(! v) /* Win 7 */,
           "SPI_{GET,SET}SCREENSAVEACTIVE: got %d instead of %d\n", v, vals[i]);
    }

    rc=FUNC2( SPI_SETSCREENSAVEACTIVE, old_b, 0, SPIF_UPDATEINIFILE );
    FUNC4(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
}