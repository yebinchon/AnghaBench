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
typedef  int* PUCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentCS ; 
 int /*<<< orphan*/  CurrentEIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC4(void)
{
	PUCHAR linear;
	BOOLEAN bResult = FALSE;

    FUNC1();
	FUNC0((0,"IsRetAtEIP()\n"));

	linear=(PUCHAR)FUNC2(CurrentCS,CurrentEIP);

    switch(*linear)
    {
        case 0xc2:
        case 0xc3:
        case 0xca:
        case 0xcb:
        case 0xcf: // IRET/IRETD
			bResult = TRUE;
            break;
    }

    FUNC3();

    return bResult;
}