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
 int /*<<< orphan*/  SPI_GETMENUSHOWDELAY ; 
 int /*<<< orphan*/  SPI_SETMENUSHOWDELAY ; 
 int /*<<< orphan*/  SPI_SETMENUSHOWDELAY_REGKEY ; 
 int /*<<< orphan*/  SPI_SETMENUSHOWDELAY_VALNAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int const,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int const,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10( void )      /*     107 */
{
    BOOL rc;
    UINT old_delay;
    const UINT vals[]={0,32767};
    unsigned int i;

    FUNC9("testing SPI_{GET,SET}MENUSHOWDELAY\n");
    FUNC1(0xdeadbeef);
    rc=FUNC2( SPI_GETMENUSHOWDELAY, 0, &old_delay, 0 );

    /* SPI_{GET,SET}MENUSHOWDELAY not supported on Windows 95 */
    if (!FUNC7(rc,"SPI_{GET,SET}MENUSHOWDELAY"))
        return;

    for (i=0;i<sizeof(vals)/sizeof(*vals);i++)
    {
        UINT v;
        char buf[10];

        rc=FUNC2( SPI_SETMENUSHOWDELAY, vals[i], 0,
                               SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!FUNC7(rc,"SPI_SETMENUSHOWDELAY")) return;
        FUNC4(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC6( SPI_SETMENUSHOWDELAY, 0 );
        FUNC5( buf, "%d", vals[i] );
        FUNC8( SPI_SETMENUSHOWDELAY_REGKEY,
                      SPI_SETMENUSHOWDELAY_VALNAME, buf );

        FUNC2( SPI_GETMENUSHOWDELAY, 0, &v, 0 );
        FUNC4(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC3( v, vals[i], "SPI_{GET,SET}MENUSHOWDELAY", "%d" );
    }

    rc=FUNC2( SPI_SETMENUSHOWDELAY, old_delay, 0,
                              SPIF_UPDATEINIFILE );
    FUNC4(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
}