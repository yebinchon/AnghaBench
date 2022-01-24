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
struct TYPE_6__ {scalar_t__ RopCode; scalar_t__ UsesSource; scalar_t__ UsesPattern; } ;
typedef  TYPE_1__* PROPINFO ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*,int,unsigned int) ; 
 int FLAG_BOTTOMUP ; 
 int FLAG_FORCENOUSESSOURCE ; 
 int FLAG_FORCERAWSOURCEAVAIL ; 
 int FLAG_PATTERNSURFACE ; 
 int FLAG_TRIVIALXLATE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ ROPCODE_SRCCOPY ; 

__attribute__((used)) static void
FUNC7(FILE *Out, unsigned Bpp, PROPINFO RopInfo, int Flags,
              unsigned SourceBpp)
{
    unsigned Partial;

    FUNC5(Out);
    if (RopInfo->UsesSource)
    {
        if (0 == (Flags & FLAG_FORCENOUSESSOURCE))
        {
            FUNC0(Out, 1, Flags, SourceBpp);
        }
        FUNC0(Out, 0, Flags, Bpp);
        FUNC1(Out, Bpp);
        FUNC5(Out);
    }
    if (RopInfo->UsesPattern && 0 != (Flags & FLAG_PATTERNSURFACE))
    {
        if (0 == (Flags & FLAG_BOTTOMUP))
        {
            FUNC6(Out, "PatternY = (BltInfo->DestRect.top - BltInfo->BrushOrigin.y) %%\n");
            FUNC6(Out, "           BltInfo->PatternSurface->sizlBitmap.cy;\n");
        }
        else
        {
            FUNC6(Out, "PatternY = (BltInfo->DestRect.bottom - 1 -\n");
            FUNC6(Out, "            BltInfo->BrushOrigin.y) %%\n");
            FUNC6(Out, "           BltInfo->PatternSurface->sizlBitmap.cy;\n");
        }
    }
    if (ROPCODE_SRCCOPY == RopInfo->RopCode &&
            0 != (Flags & FLAG_TRIVIALXLATE) && Bpp == SourceBpp)
    {
        FUNC6(Out, "CenterCount = %u * (BltInfo->DestRect.right -\n", Bpp >> 3);
        FUNC6(Out, "                   BltInfo->DestRect.left);\n");
    }
    if (RopInfo->UsesPattern && 0 != (Flags & FLAG_PATTERNSURFACE))
    {
        FUNC6(Out, "BasePatternX = (BltInfo->DestRect.left - BltInfo->BrushOrigin.x) %%\n");
        FUNC6(Out, "           BltInfo->PatternSurface->sizlBitmap.cx;\n");
    }

    FUNC6(Out, "for (LineIndex = 0; LineIndex < LineCount; LineIndex++)\n");
    FUNC6(Out, "{\n");
    if (ROPCODE_SRCCOPY != RopInfo->RopCode ||
            0 == (Flags & FLAG_TRIVIALXLATE) || Bpp != SourceBpp)
    {
        if (RopInfo->UsesSource && 0 == (Flags & FLAG_FORCENOUSESSOURCE))
        {
            FUNC6(Out, "SourcePtr = (PULONG) SourceBase;\n");
            if (SourceBpp <= 16)
            {
                FUNC6(Out, "RawSource = *SourcePtr++;\n");
                FUNC6(Out, "SourcePixels = BaseSourcePixels;\n");
            }
        }
        FUNC6(Out, "DestPtr = (PULONG) DestBase;\n");
    }

    if (RopInfo->UsesPattern && 0 != (Flags & FLAG_PATTERNSURFACE))
    {
        FUNC6(Out, "PatternX = BasePatternX;\n");
    }

    if (ROPCODE_SRCCOPY == RopInfo->RopCode &&
            0 != (Flags & FLAG_TRIVIALXLATE) && Bpp == SourceBpp)
    {
        FUNC6(Out, "RtlMoveMemory(DestBase, SourceBase, CenterCount);\n");
        FUNC6(Out, "\n");
    }
    else
    {
        FUNC6(Out, "\n");
        if (32 != Bpp)
        {
            if (16 == Bpp)
            {
                FUNC6(Out, "if (0 != LeftCount)\n");
            }
            else
            {
                FUNC6(Out, "for (i = 0; i < LeftCount; i++)\n");
            }
            FUNC6(Out, "{\n");
            FUNC4(Out, Bpp, RopInfo,
                                 (16 == Bpp ? Flags | FLAG_FORCERAWSOURCEAVAIL :
                                  Flags), SourceBpp);
            FUNC5(Out);
            FUNC6(Out, "}\n");
            FUNC6(Out, "\n");
        }
        FUNC6(Out, "for (i = 0; i < CenterCount; i++)\n");
        FUNC6(Out, "{\n");
        if (RopInfo->UsesSource && 0 == (Flags & FLAG_FORCENOUSESSOURCE))
        {
            for (Partial = 0; Partial < 32 / Bpp; Partial++)
            {
                FUNC2(Out, Bpp, RopInfo, Flags, SourceBpp,
                                Partial * Bpp);
                FUNC5(Out);
            }
            FUNC6(Out, "\n");
        }
        if (RopInfo->UsesPattern && 0 != (Flags & FLAG_PATTERNSURFACE))
        {
            for (Partial = 0; Partial < 32 / Bpp; Partial++)
            {
                if (0 == Partial)
                {
                    FUNC6(Out, "Pattern = DIB_GetSourceIndex(BltInfo->PatternSurface, PatternX, PatternY);\n");
                }
                else
                {
                    FUNC6(Out, "Pattern |= DIB_GetSourceIndex(BltInfo->PatternSurface, PatternX, PatternY) << %u;\n", Partial * Bpp);
                }
                FUNC6(Out, "if (BltInfo->PatternSurface->sizlBitmap.cx <= ++PatternX)\n");
                FUNC6(Out, "{\n");
                FUNC6(Out, "PatternX -= BltInfo->PatternSurface->sizlBitmap.cx;\n");
                FUNC6(Out, "}\n");
            }
            FUNC6(Out, "\n");
        }
        FUNC3(Out, Bpp, RopInfo, SourceBpp, 32);
        FUNC6(Out, ";\n");
        FUNC5(Out);
        FUNC6(Out, "\n");
        FUNC6(Out, "DestPtr++;\n");
        FUNC6(Out, "}\n");
        FUNC6(Out, "\n");
        if (32 != Bpp)
        {
            if (16 == Bpp)
            {
                FUNC6(Out, "if (0 != RightCount)\n");
            }
            else
            {
                FUNC6(Out, "for (i = 0; i < RightCount; i++)\n");
            }
            FUNC6(Out, "{\n");
            FUNC4(Out, Bpp, RopInfo, Flags, SourceBpp);
            FUNC5(Out);
            FUNC6(Out, "}\n");
            FUNC6(Out, "\n");
        }
        if (RopInfo->UsesPattern && 0 != (Flags & FLAG_PATTERNSURFACE))
        {
            if (0 == (Flags & FLAG_BOTTOMUP))
            {
                FUNC6(Out, "if (BltInfo->PatternSurface->sizlBitmap.cy <= ++PatternY)\n");
                FUNC6(Out, "{\n");
                FUNC6(Out, "PatternY -= BltInfo->PatternSurface->sizlBitmap.cy;\n");
                FUNC6(Out, "}\n");
            }
            else
            {
                FUNC6(Out, "if (0 == PatternY--)\n");
                FUNC6(Out, "{\n");
                FUNC6(Out, "PatternY = BltInfo->PatternSurface->sizlBitmap.cy - 1;\n");
                FUNC6(Out, "}\n");
            }
        }
    }
    if (RopInfo->UsesSource && 0 == (Flags & FLAG_FORCENOUSESSOURCE))
    {
        FUNC6(Out, "SourceBase %c= BltInfo->SourceSurface->lDelta;\n",
               0 == (Flags & FLAG_BOTTOMUP) ? '+' : '-');
    }
    FUNC6(Out, "DestBase %c= BltInfo->DestSurface->lDelta;\n",
           0 == (Flags & FLAG_BOTTOMUP) ? '+' : '-');
    FUNC6(Out, "}\n");
}