#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ RopCode; scalar_t__ UsesPattern; scalar_t__ UsesSource; } ;
typedef  TYPE_1__* PROPINFO ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FLAG_PATTERNSURFACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*) ; 
 scalar_t__ ROPCODE_BLACKNESS ; 
 scalar_t__ ROPCODE_GENERIC ; 
 scalar_t__ ROPCODE_MERGECOPY ; 
 scalar_t__ ROPCODE_NOOP ; 
 scalar_t__ ROPCODE_PATINVERT ; 
 scalar_t__ ROPCODE_PATPAINT ; 
 scalar_t__ ROPCODE_WHITENESS ; 

__attribute__((used)) static void
FUNC6(FILE *Out, unsigned Bpp, PROPINFO RopInfo)
{
    int First;
    unsigned Partial;

    FUNC3(Out);
    FUNC4(Out, "\n");
    FUNC4(Out, "static void\n");
    FUNC5(Out, Bpp, RopInfo);
    FUNC4(Out, "(PBLTINFO BltInfo)\n");
    FUNC4(Out, "{\n");
    if (ROPCODE_BLACKNESS == RopInfo->RopCode)
    {
        FUNC4(Out, "DIB_%uBPP_ColorFill(BltInfo->DestSurface, "
               "&BltInfo->DestRect, 0x0);\n", Bpp);
    }
    else if (ROPCODE_WHITENESS == RopInfo->RopCode)
    {
        FUNC4(Out, "DIB_%uBPP_ColorFill(BltInfo->DestSurface, "
               "&BltInfo->DestRect, ~0);\n", Bpp);
    }
    else if (ROPCODE_NOOP == RopInfo->RopCode)
    {
        FUNC4(Out, "return;\n");
    }
    else
    {
        FUNC4(Out, "ULONG LineIndex, LineCount;\n");
        FUNC4(Out, "ULONG i;\n");
        if (RopInfo->UsesPattern)
        {
            FUNC4(Out, "LONG PatternX =0, PatternY = 0, BasePatternX = 0;\n");
        }
        First = 1;
        if (RopInfo->UsesSource)
        {
            FUNC4(Out, "ULONG Source = 0");
            First = 0;
        }
        if (RopInfo->UsesPattern)
        {
            FUNC4(Out, "%s Pattern = 0", First ? "ULONG" : ",");
            First = 0;
        }
        if (! First)
        {
            FUNC4(Out, ";\n");
        }
        FUNC4(Out, "char *DestBase;\n");
        FUNC4(Out, "PULONG DestPtr;\n");
        if (RopInfo->UsesSource)
        {
            FUNC4(Out, "char *SourceBase;\n");
            FUNC4(Out, "PULONG SourcePtr;\n");
            FUNC4(Out, "ULONG RawSource;\n");
            FUNC4(Out, "unsigned SourcePixels, BaseSourcePixels;\n");
        }
        if (32 == Bpp)
        {
            FUNC4(Out, "ULONG CenterCount;\n");
        }
        else
        {
            FUNC4(Out, "ULONG LeftCount, CenterCount, RightCount;\n");
        }
        if (ROPCODE_GENERIC == RopInfo->RopCode)
        {
            FUNC4(Out, "BOOLEAN UsesSource, UsesPattern;\n");
            FUNC4(Out, "\n");
            FUNC4(Out, "UsesSource = ROP4_USES_SOURCE(BltInfo->Rop4);\n");
            FUNC4(Out, "UsesPattern = ROP4_USES_PATTERN(BltInfo->Rop4);\n");
        }
        FUNC4(Out, "\n");
        if (! RopInfo->UsesSource)
        {
            FUNC1(Out, 0, 0, Bpp);
            FUNC2(Out, Bpp);
            FUNC3(Out);
        }
        FUNC4(Out, "LineCount = BltInfo->DestRect.bottom - BltInfo->DestRect.top;\n");

        FUNC4(Out, "\n");
        if (RopInfo->UsesPattern)
        {
            if (ROPCODE_GENERIC == RopInfo->RopCode)
            {
                FUNC4(Out, "if (UsesPattern && NULL != BltInfo->PatternSurface)\n");
            }
            else
            {
                FUNC4(Out, "if (NULL != BltInfo->PatternSurface)\n");
            }
            FUNC4(Out, "{\n");
            FUNC0(Out, Bpp, RopInfo, FLAG_PATTERNSURFACE);
            FUNC3(Out);
            FUNC4(Out, "}\n");
            FUNC4(Out, "else\n");
            FUNC4(Out, "{\n");
            if (ROPCODE_GENERIC == RopInfo->RopCode)
            {
                FUNC4(Out, "if (UsesPattern)\n");
                FUNC4(Out, "{\n");
            }
            for (Partial = 0; Partial < 32 / Bpp; Partial++)
            {
                if (0 == Partial)
                {
                    FUNC4(Out, "if (!BltInfo->Brush)\n");
                    FUNC4(Out, "{\n");
                    FUNC4(Out, "Pattern = 0;\n");
                    FUNC4(Out, "}\n");
                    FUNC4(Out, "else\n");
                    FUNC4(Out, "{\n");
                    FUNC4(Out, "Pattern = BltInfo->Brush->iSolidColor");
                }
                else
                {
                    FUNC4(Out, "          (BltInfo->Brush->iSolidColor << %d)",
                           Partial * Bpp);
                }
                if (32 / Bpp <= Partial + 1)
                {
                    FUNC4(Out, ";\n");
                    FUNC4(Out, "}\n");
                }
                else
                {
                    FUNC4(Out, " |\n");
                }
            }
            if (ROPCODE_PATINVERT == RopInfo->RopCode ||
                    ROPCODE_MERGECOPY == RopInfo->RopCode)
            {
                FUNC4(Out, "if (0 == Pattern)\n");
                FUNC4(Out, "{\n");
                if (ROPCODE_MERGECOPY == RopInfo->RopCode)
                {
                    FUNC4(Out, "DIB_%uBPP_ColorFill(BltInfo->DestSurface, "
                           "&BltInfo->DestRect, 0x0);\n", Bpp);
                }
                FUNC4(Out, "return;\n");
                FUNC4(Out, "}\n");
            }
            else if (ROPCODE_PATPAINT == RopInfo->RopCode)
            {
                FUNC4(Out, "if ((~0) == Pattern)\n");
                FUNC4(Out, "{\n");
                FUNC4(Out, "DIB_%uBPP_ColorFill(BltInfo->DestSurface, "
                       "&BltInfo->DestRect, ~0);\n", Bpp);
                FUNC4(Out, "return;\n");
                FUNC4(Out, "}\n");
            }
            if (ROPCODE_GENERIC == RopInfo->RopCode)
            {
                FUNC4(Out, "}\n");
            }
            FUNC0(Out, Bpp, RopInfo, 0);
            FUNC3(Out);
            FUNC4(Out, "}\n");
        }
        else
        {
            FUNC0(Out, Bpp, RopInfo, 0);
            FUNC3(Out);
        }
    }
    FUNC4(Out, "}\n");
}