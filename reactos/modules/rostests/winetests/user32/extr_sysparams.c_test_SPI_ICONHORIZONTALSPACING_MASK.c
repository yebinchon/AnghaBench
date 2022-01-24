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
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_ICONHORIZONTALSPACING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7( void )     /*     13 */
{
    BOOL rc;
    INT old_spacing;

    FUNC6("testing SPI_ICONHORIZONTALSPACING\n");
    FUNC1(0xdeadbeef);
    /* default value: 75 */
    rc=FUNC2( SPI_ICONHORIZONTALSPACING, 0, &old_spacing, 0 );
    if (!FUNC5(rc,"SPI_ICONHORIZONTALSPACING"))
        return;
    /* do not increase the value as it would upset the user's icon layout */
    if (!FUNC3( old_spacing - 1)) return;
    FUNC3( 10); /* minimum is 32 */
    /* restore */
    rc=FUNC2( SPI_ICONHORIZONTALSPACING, old_spacing, 0, SPIF_UPDATEINIFILE );
    FUNC4(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());
}