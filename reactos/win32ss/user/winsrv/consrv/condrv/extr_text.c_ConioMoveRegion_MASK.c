#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {int Top; int Bottom; int Left; int Right; } ;
typedef  int /*<<< orphan*/  PTEXTMODE_SCREEN_BUFFER ;
typedef  TYPE_1__* PSMALL_RECT ;
typedef  int /*<<< orphan*/ * PCHAR_INFO ;
typedef  int /*<<< orphan*/  CHAR_INFO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static VOID
FUNC3(PTEXTMODE_SCREEN_BUFFER ScreenBuffer,
                PSMALL_RECT SrcRegion,
                PSMALL_RECT DstRegion,
                PSMALL_RECT ClipRegion,
                CHAR_INFO FillChar)
{
    int Width  = FUNC2(SrcRegion);
    int Height = FUNC1(SrcRegion);
    int SX, SY;
    int DX, DY;
    int XDelta, YDelta;
    int i, j;

    SY = SrcRegion->Top;
    DY = DstRegion->Top;
    YDelta = 1;
    if (SY < DY)
    {
        /* Moving down: work from bottom up */
        SY = SrcRegion->Bottom;
        DY = DstRegion->Bottom;
        YDelta = -1;
    }
    for (i = 0; i < Height; i++)
    {
        PCHAR_INFO SRow = FUNC0(ScreenBuffer, 0, SY);
        PCHAR_INFO DRow = FUNC0(ScreenBuffer, 0, DY);

        SX = SrcRegion->Left;
        DX = DstRegion->Left;
        XDelta = 1;
        if (SX < DX)
        {
            /* Moving right: work from right to left */
            SX = SrcRegion->Right;
            DX = DstRegion->Right;
            XDelta = -1;
        }
        for (j = 0; j < Width; j++)
        {
            CHAR_INFO Cell = SRow[SX];
            if (SX >= ClipRegion->Left && SX <= ClipRegion->Right &&
                SY >= ClipRegion->Top  && SY <= ClipRegion->Bottom)
            {
                SRow[SX] = FillChar;
            }
            if (DX >= ClipRegion->Left && DX <= ClipRegion->Right &&
                DY >= ClipRegion->Top  && DY <= ClipRegion->Bottom)
            {
                DRow[DX] = Cell;
            }
            SX += XDelta;
            DX += XDelta;
        }
        SY += YDelta;
        DY += YDelta;
    }
}