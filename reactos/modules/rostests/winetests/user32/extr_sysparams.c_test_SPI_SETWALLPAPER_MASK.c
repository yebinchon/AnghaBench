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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int SPIF_SENDCHANGE ; 
 int SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETDESKWALLPAPER ; 
 int /*<<< orphan*/  SPI_SETDESKWALLPAPER ; 
 int /*<<< orphan*/  SPI_SETDESKWALLPAPER_REGKEY ; 
 int /*<<< orphan*/  SPI_SETDESKWALLPAPER_VALNAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9( void )              /*   115 */
{
    BOOL rc;
    char oldval[260];
    char newval[260];

    FUNC8("testing SPI_{GET,SET}DESKWALLPAPER\n");
    FUNC1(0xdeadbeef);
    rc=FUNC2(SPI_GETDESKWALLPAPER, 260, oldval, 0);
    /* SPI_{GET,SET}DESKWALLPAPER is completely broken on Win9x and
     * unimplemented on NT4
     */
    if (!FUNC6(rc,"SPI_{GET,SET}DESKWALLPAPER"))
        return;

    FUNC4(newval, "");
    rc=FUNC2(SPI_SETDESKWALLPAPER, 0, newval, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE);
    if (!FUNC6(rc,"SPI_SETDESKWALLPAPER")) return;
    FUNC3(rc, "SystemParametersInfoA: rc=%d err=%d\n", rc, FUNC0());
    FUNC5(SPI_SETDESKWALLPAPER, 0);

    rc=FUNC2(SPI_SETDESKWALLPAPER, 0, oldval, SPIF_UPDATEINIFILE);
    FUNC3(rc, "***warning*** failed to restore the original value: rc=%d err=%d\n", rc, FUNC0());

    FUNC7(SPI_SETDESKWALLPAPER_REGKEY, SPI_SETDESKWALLPAPER_VALNAME, oldval);
}