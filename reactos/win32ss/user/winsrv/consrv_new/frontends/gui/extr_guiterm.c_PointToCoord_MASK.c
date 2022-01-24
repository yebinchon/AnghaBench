#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_15__ {scalar_t__ X; scalar_t__ Y; } ;
struct TYPE_12__ {scalar_t__ X; scalar_t__ Y; } ;
struct TYPE_11__ {scalar_t__ X; scalar_t__ Y; } ;
struct TYPE_14__ {TYPE_2__ ScreenBufferSize; TYPE_1__ ViewOrigin; } ;
struct TYPE_13__ {int /*<<< orphan*/  Console; } ;
typedef  int SHORT ;
typedef  TYPE_3__* PGUI_CONSOLE_DATA ;
typedef  TYPE_4__* PCONSOLE_SCREEN_BUFFER ;
typedef  int /*<<< orphan*/  PCONSOLE ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_5__ COORD ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static COORD
FUNC4(PGUI_CONSOLE_DATA GuiData, LPARAM lParam)
{
    PCONSOLE Console = GuiData->Console;
    PCONSOLE_SCREEN_BUFFER Buffer = FUNC0(Console);
    COORD Coord;
    UINT  WidthUnit, HeightUnit;

    FUNC1(Buffer, GuiData, &WidthUnit, &HeightUnit);

    Coord.X = Buffer->ViewOrigin.X + ((SHORT)FUNC3(lParam) / (int)WidthUnit );
    Coord.Y = Buffer->ViewOrigin.Y + ((SHORT)FUNC2(lParam) / (int)HeightUnit);

    /* Clip coordinate to ensure it's inside buffer */
    if (Coord.X < 0)
        Coord.X = 0;
    else if (Coord.X >= Buffer->ScreenBufferSize.X)
        Coord.X = Buffer->ScreenBufferSize.X - 1;

    if (Coord.Y < 0)
        Coord.Y = 0;
    else if (Coord.Y >= Buffer->ScreenBufferSize.Y)
        Coord.Y = Buffer->ScreenBufferSize.Y - 1;

    return Coord;
}