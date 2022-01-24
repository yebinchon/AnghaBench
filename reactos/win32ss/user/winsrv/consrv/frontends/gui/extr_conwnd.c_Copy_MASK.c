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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {scalar_t__ ActiveBuffer; int /*<<< orphan*/  hWindow; } ;
typedef  int /*<<< orphan*/  PTEXTMODE_SCREEN_BUFFER ;
typedef  TYPE_1__* PGUI_CONSOLE_DATA ;
typedef  int /*<<< orphan*/  PGRAPHICS_SCREEN_BUFFER ;
typedef  scalar_t__ PCONSOLE_SCREEN_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEXTMODE_BUFFER ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC6(PGUI_CONSOLE_DATA GuiData)
{
    if (FUNC4(GuiData->hWindow))
    {
        PCONSOLE_SCREEN_BUFFER Buffer = GuiData->ActiveBuffer;

        if (FUNC1(Buffer) == TEXTMODE_BUFFER)
        {
            FUNC3((PTEXTMODE_SCREEN_BUFFER)Buffer, GuiData);
        }
        else /* if (GetType(Buffer) == GRAPHICS_BUFFER) */
        {
            FUNC2((PGRAPHICS_SCREEN_BUFFER)Buffer, GuiData);
        }

        FUNC0();
    }

    /* Clear the selection */
    FUNC5(GuiData, NULL, NULL);
}