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
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int const FUNC0 () ; 
 int SPIF_SENDCHANGE ; 
 int SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETFONTSMOOTHING ; 
 int /*<<< orphan*/  SPI_GETFONTSMOOTHINGCONTRAST ; 
 int /*<<< orphan*/  SPI_GETFONTSMOOTHINGORIENTATION ; 
 int /*<<< orphan*/  SPI_GETFONTSMOOTHINGTYPE ; 
 int /*<<< orphan*/  SPI_SETFONTSMOOTHING ; 
 int /*<<< orphan*/  SPI_SETFONTSMOOTHINGCONTRAST ; 
 int /*<<< orphan*/  SPI_SETFONTSMOOTHINGCONTRAST_VALNAME ; 
 int /*<<< orphan*/  SPI_SETFONTSMOOTHINGORIENTATION ; 
 int /*<<< orphan*/  SPI_SETFONTSMOOTHINGORIENTATION_VALNAME ; 
 int /*<<< orphan*/  SPI_SETFONTSMOOTHINGTYPE ; 
 int /*<<< orphan*/  SPI_SETFONTSMOOTHINGTYPE_VALNAME ; 
 int /*<<< orphan*/  SPI_SETFONTSMOOTHING_REGKEY ; 
 int /*<<< orphan*/  SPI_SETFONTSMOOTHING_VALNAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int const,int*,int) ; 
 int* FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*,char*) ; 
 scalar_t__ iswin9x ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int const,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11( void )         /*     75 */
{
    BOOL rc;
    BOOL old_b;
    DWORD old_type, old_contrast, old_orient;
    const UINT vals[]={0xffffffff,0,1,2};
    unsigned int i;

    FUNC10("testing SPI_{GET,SET}FONTSMOOTHING\n");
    if( iswin9x) return; /* 95/98/ME don't seem to implement this fully */ 
    FUNC1(0xdeadbeef);
    rc=FUNC2( SPI_GETFONTSMOOTHING, 0, &old_b, 0 );
    if (!FUNC7(rc,"SPI_{GET,SET}FONTSMOOTHING"))
        return;
    FUNC2( SPI_GETFONTSMOOTHINGTYPE, 0, &old_type, 0 );
    FUNC2( SPI_GETFONTSMOOTHINGCONTRAST, 0, &old_contrast, 0 );
    FUNC2( SPI_GETFONTSMOOTHINGORIENTATION, 0, &old_orient, 0 );

    for (i=0;i<sizeof(vals)/sizeof(*vals);i++)
    {
        UINT v;

        rc=FUNC2( SPI_SETFONTSMOOTHING, vals[i], 0,
                                  SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!FUNC7(rc,"SPI_SETFONTSMOOTHING")) return;
        FUNC5(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC6( SPI_SETFONTSMOOTHING, 0 );
        FUNC8( SPI_SETFONTSMOOTHING_REGKEY,
                      SPI_SETFONTSMOOTHING_VALNAME,
                      vals[i] ? "2" : "0" );

        rc=FUNC2( SPI_SETFONTSMOOTHINGTYPE, 0, FUNC3(vals[i]),
                                  SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!FUNC7(rc,"SPI_SETFONTSMOOTHINGTYPE")) return;
        FUNC5(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC6( SPI_SETFONTSMOOTHINGTYPE, 0 );
        FUNC9( SPI_SETFONTSMOOTHING_REGKEY,
                            SPI_SETFONTSMOOTHINGTYPE_VALNAME, &vals[i] );

        rc=FUNC2( SPI_SETFONTSMOOTHINGCONTRAST, 0, FUNC3(vals[i]),
                                  SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!FUNC7(rc,"SPI_SETFONTSMOOTHINGCONTRAST")) return;
        FUNC5(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC6( SPI_SETFONTSMOOTHINGCONTRAST, 0 );
        FUNC9( SPI_SETFONTSMOOTHING_REGKEY,
                            SPI_SETFONTSMOOTHINGCONTRAST_VALNAME, &vals[i] );

        rc=FUNC2( SPI_SETFONTSMOOTHINGORIENTATION, 0, FUNC3(vals[i]),
                                  SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
        if (!FUNC7(rc,"SPI_SETFONTSMOOTHINGORIENTATION")) return;
        FUNC5(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC6( SPI_SETFONTSMOOTHINGORIENTATION, 0 );
        FUNC9( SPI_SETFONTSMOOTHING_REGKEY,
                            SPI_SETFONTSMOOTHINGORIENTATION_VALNAME, &vals[i] );

        rc=FUNC2( SPI_GETFONTSMOOTHING, 0, &v, 0 );
        FUNC5(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC4( v, vals[i] ? 1 : 0, "SPI_GETFONTSMOOTHING", "%d" );

        rc=FUNC2( SPI_GETFONTSMOOTHINGTYPE, 0, &v, 0 );
        FUNC5(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC5( v == vals[i], "wrong value %x/%x\n", v, vals[i] );

        rc=FUNC2( SPI_GETFONTSMOOTHINGCONTRAST, 0, &v, 0 );
        FUNC5(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC5( v == vals[i], "wrong value %x/%x\n", v, vals[i] );

        rc=FUNC2( SPI_GETFONTSMOOTHINGORIENTATION, 0, &v, 0 );
        FUNC5(rc, "%d: rc=%d err=%d\n", i, rc, FUNC0());
        FUNC5( v == vals[i], "wrong value %x/%x\n", v, vals[i] );
    }

    rc=FUNC2( SPI_SETFONTSMOOTHING, old_b, 0, SPIF_UPDATEINIFILE );
    FUNC5(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
    rc=FUNC2( SPI_SETFONTSMOOTHINGTYPE, old_type, 0, SPIF_UPDATEINIFILE );
    FUNC5(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
    rc=FUNC2( SPI_SETFONTSMOOTHINGCONTRAST, old_contrast, 0, SPIF_UPDATEINIFILE );
    FUNC5(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
    rc=FUNC2( SPI_SETFONTSMOOTHINGORIENTATION, old_orient, 0, SPIF_UPDATEINIFILE );
    FUNC5(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
}