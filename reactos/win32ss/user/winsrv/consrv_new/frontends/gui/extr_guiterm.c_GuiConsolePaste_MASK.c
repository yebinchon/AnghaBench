#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  Console; int /*<<< orphan*/  hWindow; } ;
typedef  int /*<<< orphan*/  PTEXTMODE_SCREEN_BUFFER ;
typedef  TYPE_1__* PGUI_CONSOLE_DATA ;
typedef  int /*<<< orphan*/  PGRAPHICS_SCREEN_BUFFER ;
typedef  scalar_t__ PCONSOLE_SCREEN_BUFFER ;
typedef  int /*<<< orphan*/  PCONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEXTMODE_BUFFER ; 

__attribute__((used)) static VOID
FUNC6(PGUI_CONSOLE_DATA GuiData)
{
    if (FUNC5(GuiData->hWindow))
    {
        PCONSOLE Console = GuiData->Console;
        PCONSOLE_SCREEN_BUFFER Buffer = FUNC1(Console);

        if (FUNC2(Buffer) == TEXTMODE_BUFFER)
        {
            FUNC4((PTEXTMODE_SCREEN_BUFFER)Buffer);
        }
        else /* if (GetType(Buffer) == GRAPHICS_BUFFER) */
        {
            FUNC3((PGRAPHICS_SCREEN_BUFFER)Buffer);
        }

        FUNC0();
    }
}