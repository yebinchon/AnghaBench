#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int right; int bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ RECT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC1 () ; 
 int SPIF_SENDCHANGE ; 
 int SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETWORKAREA ; 
 int /*<<< orphan*/  SPI_SETWORKAREA ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10( void )               /*     47 */
{
    BOOL rc;
    RECT old_area;
    RECT area;
    RECT curr_val;

    FUNC9("testing SPI_{GET,SET}WORKAREA\n");
    FUNC2(0xdeadbeef);
    rc=FUNC4(SPI_GETWORKAREA, 0, &old_area, 0);
    if (!FUNC8(rc,"SPI_{GET,SET}WORKAREA"))
        return;

    /* Modify the work area only minimally as this causes the icons that
     * fall outside it to be moved around thus requiring the user to
     * reposition them manually one by one.
     * Changing the work area by just one pixel should make this occurrence
     * reasonably unlikely.
     */
    FUNC3(&curr_val, old_area.left, old_area.top, old_area.right - 1, old_area.bottom - 1);
    rc=FUNC4( SPI_SETWORKAREA, 0, &curr_val,
                              SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    if (!FUNC8(rc,"SPI_SETWORKAREA")) return;
    FUNC6(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, FUNC1());
    rc=FUNC4( SPI_GETWORKAREA, 0, &area, 0 );
    FUNC6(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, FUNC1());
    if( !FUNC0( &area, &curr_val)) /* no message if rect has not changed */
        FUNC7( SPI_SETWORKAREA, 0);
    FUNC5( area.left,   curr_val.left,   "left",   "%d" );
    FUNC5( area.top,    curr_val.top,    "top",    "%d" );
    /* size may be rounded */
    FUNC6( area.right >= curr_val.right - 16 && area.right < curr_val.right + 16,
        "right: got %d instead of %d\n", area.right, curr_val.right );
    FUNC6( area.bottom >= curr_val.bottom - 16 && area.bottom < curr_val.bottom + 16,
        "bottom: got %d instead of %d\n", area.bottom, curr_val.bottom );
    curr_val = area;
    rc=FUNC4( SPI_SETWORKAREA, 0, &old_area,
                              SPIF_UPDATEINIFILE | SPIF_SENDCHANGE );
    FUNC6(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC1());
    rc=FUNC4( SPI_GETWORKAREA, 0, &area, 0 );
    FUNC6(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, FUNC1());
    if( !FUNC0( &area, &curr_val)) /* no message if rect has not changed */
        FUNC7( SPI_SETWORKAREA, 0 );
    FUNC5( area.left,   old_area.left,   "left",   "%d" );
    FUNC5( area.top,    old_area.top,    "top",    "%d" );
    /* size may be rounded */
    FUNC6( area.right >= old_area.right - 16 && area.right < old_area.right + 16,
        "right: got %d instead of %d\n", area.right, old_area.right );
    FUNC6( area.bottom >= old_area.bottom - 16 && area.bottom < old_area.bottom + 16,
        "bottom: got %d instead of %d\n", area.bottom, old_area.bottom );
}