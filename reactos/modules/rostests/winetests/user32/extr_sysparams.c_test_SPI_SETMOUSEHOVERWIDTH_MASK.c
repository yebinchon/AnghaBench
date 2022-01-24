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
 int /*<<< orphan*/  SPI_GETMOUSEHOVERWIDTH ; 
 int /*<<< orphan*/  SPI_SETMOUSEHOVERWIDTH ; 
 int /*<<< orphan*/  SPI_SETMOUSEHOVERWIDTH_REGKEY ; 
 int /*<<< orphan*/  SPI_SETMOUSEHOVERWIDTH_VALNAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int const,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int const,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10( void )      /*     99 */
{
    BOOL rc;
    UINT old_width;
    const UINT vals[]={0,32767};
    unsigned int i;

    FUNC9("testing SPI_{GET,SET}MOUSEHOVERWIDTH\n");
    FUNC1(0xdeadbeef);
    rc=FUNC2( SPI_GETMOUSEHOVERWIDTH, 0, &old_width, 0 );
    /* SPI_{GET,SET}MOUSEHOVERWIDTH does not seem to be supported on Win9x despite
    * what MSDN states (Verified on Win98SE)
    */
    if (!FUNC7(rc,"SPI_{GET,SET}MOUSEHOVERWIDTH"))
        return;
    
    for (i=0;i<sizeof(vals)/sizeof(*vals);i++)
    {
        UINT v;
        char buf[10];

        rc=FUNC2( SPI_SETMOUSEHOVERWIDTH, vals[i], 0,
                               SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!FUNC7(rc,"SPI_SETMOUSEHOVERWIDTH")) return;
        FUNC4(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC6( SPI_SETMOUSEHOVERWIDTH, 0 );
        FUNC5( buf, "%d", vals[i] );
        FUNC8( SPI_SETMOUSEHOVERWIDTH_REGKEY,
                      SPI_SETMOUSEHOVERWIDTH_VALNAME, buf );

        FUNC2( SPI_GETMOUSEHOVERWIDTH, 0, &v, 0 );
        FUNC4(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC3( v, vals[i], "SPI_{GET,SET}MOUSEHOVERWIDTH", "%d" );
    }

    rc=FUNC2( SPI_SETMOUSEHOVERWIDTH, old_width, 0,
                              SPIF_UPDATEINIFILE );
    FUNC4(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
}