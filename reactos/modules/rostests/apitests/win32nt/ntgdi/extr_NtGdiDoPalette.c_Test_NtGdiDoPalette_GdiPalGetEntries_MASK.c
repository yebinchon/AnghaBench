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
typedef  int /*<<< orphan*/  HPALETTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GdiPalGetEntries ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3(void)
{
    HPALETTE hPal;

    hPal = FUNC0();

    /* Test pEntries = NULL */
    FUNC2(FUNC1(hPal, 0, 1, NULL, GdiPalGetEntries, TRUE), 0);
    FUNC2(FUNC1(hPal, 0, 1, NULL, GdiPalGetEntries, FALSE), 5);
    FUNC2(FUNC1(hPal, 2, 1, NULL, GdiPalGetEntries, FALSE), 5);
    FUNC2(FUNC1(hPal, 20, 1, NULL, GdiPalGetEntries, FALSE), 5);
    FUNC2(FUNC1(hPal, -20, 1, NULL, GdiPalGetEntries, FALSE), 5);
    FUNC2(FUNC1(hPal, 2, 0, NULL, GdiPalGetEntries, FALSE), 5);


// Test flags 0xf0

}