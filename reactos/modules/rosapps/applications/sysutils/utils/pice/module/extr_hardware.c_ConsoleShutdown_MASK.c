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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
#define  TERMINAL_MODE_HERCULES_GRAPHICS 132 
#define  TERMINAL_MODE_HERCULES_TEXT 131 
#define  TERMINAL_MODE_NONE 130 
#define  TERMINAL_MODE_SERIAL 129 
#define  TERMINAL_MODE_VGA_TEXT 128 
 int eTerminalMode ; 

void FUNC6(void)
{
    FUNC3();

    // sleep for a few seconds
    FUNC4(1000*5000);

	switch(eTerminalMode)
    {
        case TERMINAL_MODE_HERCULES_GRAPHICS:
            FUNC0();
            break;
        case TERMINAL_MODE_HERCULES_TEXT:
            break;
        case TERMINAL_MODE_VGA_TEXT:
            FUNC2();
            break;
        case TERMINAL_MODE_SERIAL:
            FUNC1();
            break;
        case TERMINAL_MODE_NONE:
        default:
            // fail
            break;
    }

    FUNC5();
}