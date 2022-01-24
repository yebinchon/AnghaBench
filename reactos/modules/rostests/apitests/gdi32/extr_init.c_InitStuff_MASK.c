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
typedef  int /*<<< orphan*/  LOGPALETTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ghbmp1 ; 
 int /*<<< orphan*/  ghbmp16 ; 
 int /*<<< orphan*/  ghbmp24 ; 
 int /*<<< orphan*/  ghbmp32 ; 
 int /*<<< orphan*/  ghbmp4 ; 
 int /*<<< orphan*/  ghbmp8 ; 
 int /*<<< orphan*/  ghbmpDIB1 ; 
 int /*<<< orphan*/  ghbmpDIB16 ; 
 int /*<<< orphan*/  ghbmpDIB24 ; 
 int /*<<< orphan*/  ghbmpDIB32 ; 
 int /*<<< orphan*/  ghbmpDIB4 ; 
 int /*<<< orphan*/  ghbmpDIB8 ; 
 int /*<<< orphan*/  ghdcDIB1 ; 
 int /*<<< orphan*/  ghdcDIB16 ; 
 int /*<<< orphan*/  ghdcDIB24 ; 
 int /*<<< orphan*/  ghdcDIB32 ; 
 int /*<<< orphan*/  ghdcDIB4 ; 
 int /*<<< orphan*/  ghdcDIB8 ; 
 int /*<<< orphan*/  ghpal ; 
 int /*<<< orphan*/  gpDIB32 ; 
 int /*<<< orphan*/  gpal ; 
 int /*<<< orphan*/  gpvDIB1 ; 
 int /*<<< orphan*/  gpvDIB16 ; 
 int /*<<< orphan*/  gpvDIB24 ; 
 int /*<<< orphan*/  gpvDIB32 ; 
 int /*<<< orphan*/  gpvDIB4 ; 
 int /*<<< orphan*/  gpvDIB8 ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

BOOL FUNC3(void)
{

    /* Initialize a logical palette */
    ghpal = FUNC0((LOGPALETTE*)&gpal);
    if (!ghpal)
    {
        FUNC2("failed to create a palette \n");
        return FALSE;
    }

    if (!FUNC1(1, 9, 9, &ghbmp1, &ghdcDIB1, &ghbmpDIB1, &gpvDIB1) ||
        !FUNC1(4, 5, 5, &ghbmp4, &ghdcDIB4, &ghbmpDIB4, &gpvDIB4) ||
        !FUNC1(8, 5, 5, &ghbmp8, &ghdcDIB8, &ghbmpDIB8, &gpvDIB8) ||
        !FUNC1(16, 8, 8, &ghbmp16, &ghdcDIB16, &ghbmpDIB16, &gpvDIB16) ||
        !FUNC1(24, 8, 8, &ghbmp24, &ghdcDIB24, &ghbmpDIB24, &gpvDIB24) ||
        !FUNC1(32, 8, 8, &ghbmp32, &ghdcDIB32, &ghbmpDIB32, &gpvDIB32))
    {
        FUNC2("failed to create objects \n");
        return FALSE;
    }

    gpDIB32 = gpvDIB32;

    return TRUE;
}