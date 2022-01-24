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
typedef  int BOOL ;

/* Variables and functions */
 int const FALSE ; 
 int const FUNC0 () ; 
 int SPIF_SENDCHANGE ; 
 int SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETLOWPOWERACTIVE ; 
 int /*<<< orphan*/  SPI_SETLOWPOWERACTIVE ; 
 int /*<<< orphan*/  SPI_SETLOWPOWERACTIVE_REGKEY ; 
 int /*<<< orphan*/  SPI_SETLOWPOWERACTIVE_VALNAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int const,int*,int) ; 
 int const TRUE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int const,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9( void )         /*     85 */
{
    BOOL rc;
    BOOL old_b;
    const UINT vals[]={TRUE,FALSE};
    unsigned int i;

    FUNC8("testing SPI_{GET,SET}LOWPOWERACTIVE\n");
    FUNC1(0xdeadbeef);
    rc=FUNC2( SPI_GETLOWPOWERACTIVE, 0, &old_b, 0 );
    if (!FUNC6(rc,"SPI_{GET,SET}LOWPOWERACTIVE"))
        return;

    for (i=0;i<sizeof(vals)/sizeof(*vals);i++)
    {
        UINT v;

        rc=FUNC2( SPI_SETLOWPOWERACTIVE, vals[i], 0,
                                  SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!FUNC6(rc,"SPI_SETLOWPOWERACTIVE")) return;
        FUNC4(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC5( SPI_SETLOWPOWERACTIVE, 1 );
        FUNC7( SPI_SETLOWPOWERACTIVE_REGKEY,
                               SPI_SETLOWPOWERACTIVE_VALNAME,
                               vals[i] ? "1" : "0" );

        /* SPI_SETLOWPOWERACTIVE is not persistent in win2k3 and above */
        v = 0xdeadbeef;
        rc=FUNC2( SPI_GETLOWPOWERACTIVE, 0, &v, 0 );
        FUNC4(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC4(v == vals[i] ||
           FUNC3(v == (0xdead0000 | vals[i])) ||  /* win98 only sets the low word */
           v == 0, /* win2k3 */
           "SPI_GETLOWPOWERACTIVE: got %d instead of 0 or %d\n", v, vals[i]);
    }

    rc=FUNC2( SPI_SETLOWPOWERACTIVE, old_b, 0, SPIF_UPDATEINIFILE );
    FUNC4(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
}