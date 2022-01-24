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
typedef  int HDC ;

/* Variables and functions */
 int DCX_CACHE ; 
 int DCX_USESTYLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 int R2_WHITE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ hwnd_cache ; 
 scalar_t__ hwnd_classdc ; 
 scalar_t__ hwnd_classdc2 ; 
 scalar_t__ hwnd_owndc ; 
 scalar_t__ hwnd_parent ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    HDC dc, old_dc;
    HDC hdcs[30];
    int i, rop;

    dc = FUNC1( hwnd_cache );
    FUNC5( dc, R2_WHITE );
    rop = FUNC3( dc );
    FUNC7( rop == R2_WHITE, "wrong ROP2 %d\n", rop );
    FUNC7( FUNC6( dc ) == hwnd_cache, "wrong window\n" );
    old_dc = dc;

    FUNC0( hwnd_cache );
    rop = FUNC3( dc );
    FUNC7( rop == 0, "wrong ROP2 %d\n", rop );
    FUNC7( FUNC6( dc ) == 0, "wrong window\n" );
    FUNC7( !FUNC4( hwnd_cache, dc ), "ReleaseDC succeeded\n" );
    dc = FUNC1( hwnd_cache );
    FUNC7( !dc, "Got a non-NULL DC (%p) for a destroyed window\n", dc );

    for (i = 0; i < 30; i++)
    {
        dc = hdcs[i] = FUNC2( hwnd_parent, 0, DCX_CACHE | DCX_USESTYLE );
        if (dc == old_dc) break;
    }
    FUNC7( i < 30, "DC for destroyed window not reused\n" );
    while (i > 0) FUNC4( hwnd_parent, hdcs[--i] );

    dc = FUNC1( hwnd_classdc );
    FUNC5( dc, R2_WHITE );
    rop = FUNC3( dc );
    FUNC7( rop == R2_WHITE, "wrong ROP2 %d\n", rop );
    FUNC7( FUNC6( dc ) == hwnd_classdc, "wrong window\n" );
    old_dc = dc;

    dc = FUNC1( hwnd_classdc2 );
    FUNC7( old_dc == dc, "wrong DC\n" );
    rop = FUNC3( dc );
    FUNC7( rop == R2_WHITE, "wrong ROP2 %d\n", rop );
    FUNC7( FUNC6( dc ) == hwnd_classdc2, "wrong window\n" );
    FUNC0( hwnd_classdc2 );

    rop = FUNC3( dc );
    FUNC7( rop == R2_WHITE, "wrong ROP2 %d\n", rop );
    FUNC7( FUNC6( dc ) == 0, "wrong window\n" );
    FUNC7( !FUNC4( hwnd_classdc2, dc ), "ReleaseDC succeeded\n" );
    dc = FUNC1( hwnd_classdc2 );
    FUNC7( !dc, "Got a non-NULL DC (%p) for a destroyed window\n", dc );

    dc = FUNC1( hwnd_classdc );
    FUNC7( dc != 0, "Got NULL DC\n" );
    rop = FUNC3( dc );
    FUNC7( rop == R2_WHITE, "wrong ROP2 %d\n", rop );
    FUNC7( FUNC6( dc ) == hwnd_classdc, "wrong window\n" );
    FUNC0( hwnd_classdc );

    rop = FUNC3( dc );
    FUNC7( rop == R2_WHITE, "wrong ROP2 %d\n", rop );
    FUNC7( FUNC6( dc ) == 0, "wrong window\n" );
    FUNC7( !FUNC4( hwnd_classdc, dc ), "ReleaseDC succeeded\n" );
    dc = FUNC1( hwnd_classdc );
    FUNC7( !dc, "Got a non-NULL DC (%p) for a destroyed window\n", dc );

    dc = FUNC1( hwnd_owndc );
    FUNC7( dc != 0, "Got NULL DC\n" );
    rop = FUNC3( dc );
    FUNC7( rop == R2_WHITE, "wrong ROP2 %d\n", rop );
    FUNC7( FUNC6( dc ) == hwnd_owndc, "wrong window\n" );
    FUNC0( hwnd_owndc );

    rop = FUNC3( dc );
    FUNC7( rop == 0, "wrong ROP2 %d\n", rop );
    FUNC7( FUNC6( dc ) == 0, "wrong window\n" );
    FUNC7( !FUNC4( hwnd_owndc, dc ), "ReleaseDC succeeded\n" );
    dc = FUNC1( hwnd_owndc );
    FUNC7( !dc, "Got a non-NULL DC (%p) for a destroyed window\n", dc );

    FUNC0( hwnd_parent );
}