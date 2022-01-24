#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ RopCode; scalar_t__ UsesSource; } ;
typedef  int /*<<< orphan*/  SourceBpp ;
typedef  TYPE_1__* PROPINFO ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*,int,unsigned int) ; 
 int FLAG_BOTTOMUP ; 
 int FLAG_FORCENOUSESSOURCE ; 
 int FLAG_TRIVIALXLATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ ROPCODE_GENERIC ; 

__attribute__((used)) static void
FUNC3(FILE *Out, unsigned Bpp, PROPINFO RopInfo,
                  int Flags)
{
    static unsigned SourceBpp[ ] =
    { 1, 4, 8, 16, 24, 32 };
    unsigned BppIndex;

    FUNC1(Out);
    if (RopInfo->UsesSource)
    {
        if (ROPCODE_GENERIC == RopInfo->RopCode)
        {
            FUNC2(Out, "if (UsesSource)\n");
            FUNC2(Out, "{\n");
        }
        FUNC2(Out, "switch (BltInfo->SourceSurface->iBitmapFormat)\n");
        FUNC2(Out, "{\n");
        for (BppIndex = 0;
                BppIndex < sizeof(SourceBpp) / sizeof(unsigned);
                BppIndex++)
        {
            FUNC2(Out, "case BMF_%uBPP:\n", SourceBpp[BppIndex]);
            FUNC2(Out, "{\n");
            if (Bpp == SourceBpp[BppIndex])
            {
                FUNC2(Out, "if (NULL == BltInfo->XlateSourceToDest ||\n");
                FUNC2(Out, "    0 != (BltInfo->XlateSourceToDest->flXlate & XO_TRIVIAL))\n");
                FUNC2(Out, "{\n");
                FUNC2(Out, "if (BltInfo->DestRect.top < BltInfo->SourcePoint.y)\n");
                FUNC2(Out, "{\n");
                FUNC0(Out, Bpp, RopInfo,
                              Flags | FLAG_TRIVIALXLATE,
                              SourceBpp[BppIndex]);
                FUNC1(Out);
                FUNC2(Out, "}\n");
                FUNC2(Out, "else\n");
                FUNC2(Out, "{\n");
                FUNC0(Out, Bpp, RopInfo,
                              Flags | FLAG_BOTTOMUP | FLAG_TRIVIALXLATE,
                              SourceBpp[BppIndex]);
                FUNC1(Out);
                FUNC2(Out, "}\n");
                FUNC2(Out, "}\n");
                FUNC2(Out, "else\n");
                FUNC2(Out, "{\n");
                FUNC2(Out, "if (BltInfo->DestRect.top < BltInfo->SourcePoint.y)\n");
                FUNC2(Out, "{\n");
                FUNC0(Out, Bpp, RopInfo, Flags, SourceBpp[BppIndex]);
                FUNC1(Out);
                FUNC2(Out, "}\n");
                FUNC2(Out, "else\n");
                FUNC2(Out, "{\n");
                FUNC0(Out, Bpp, RopInfo,
                              Flags | FLAG_BOTTOMUP,
                              SourceBpp[BppIndex]);
                FUNC1(Out);
                FUNC2(Out, "}\n");
                FUNC2(Out, "}\n");
            }
            else
            {
                FUNC0(Out, Bpp, RopInfo, Flags,
                              SourceBpp[BppIndex]);
                FUNC1(Out);
            }
            FUNC2(Out, "break;\n");
            FUNC2(Out, "}\n");
        }
        FUNC2(Out, "}\n");
        if (ROPCODE_GENERIC == RopInfo->RopCode)
        {
            FUNC2(Out, "}\n");
            FUNC2(Out, "else\n");
            FUNC2(Out, "{\n");
            FUNC0(Out, Bpp, RopInfo, Flags | FLAG_FORCENOUSESSOURCE, 0);
            FUNC1(Out);
            FUNC2(Out, "}\n");
        }
    }
    else
    {
        FUNC0(Out, Bpp, RopInfo, Flags, 0);
    }
}