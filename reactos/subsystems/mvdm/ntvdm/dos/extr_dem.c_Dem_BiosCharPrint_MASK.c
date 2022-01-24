#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  USHORT ;
struct TYPE_2__ {int /*<<< orphan*/  VideoPage; } ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  BIOS_VIDEO_INTERRUPT ; 
 TYPE_1__* Bda ; 
 int /*<<< orphan*/  DEFAULT_ATTRIBUTE ; 
 int /*<<< orphan*/  DosContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

VOID FUNC9(CHAR Character)
{
    /* Save AX and BX */
    USHORT AX = FUNC1();
    USHORT BX = FUNC2();

    /*
     * Set the parameters:
     * AL contains the character to print,
     * BL contains the character attribute,
     * BH contains the video page to use.
     */
    FUNC4(Character);
    FUNC7(DEFAULT_ATTRIBUTE);
    FUNC6(Bda->VideoPage);

    /* Call the BIOS INT 10h, AH=0Eh "Teletype Output" */
    FUNC3(0x0E);
    FUNC0(&DosContext, BIOS_VIDEO_INTERRUPT);

    /* Restore AX and BX */
    FUNC8(BX);
    FUNC5(AX);
}