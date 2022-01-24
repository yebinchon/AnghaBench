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
struct TYPE_5__ {scalar_t__ UsesPattern; scalar_t__ UsesSource; } ;
typedef  TYPE_1__* PROPINFO ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*,unsigned int,int) ; 
 int FLAG_FORCENOUSESSOURCE ; 
 int FLAG_PATTERNSURFACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC4(FILE *Out, unsigned Bpp, PROPINFO RopInfo, int Flags,
                     unsigned SourceBpp)
{
    if (RopInfo->UsesSource && 0 == (Flags & FLAG_FORCENOUSESSOURCE))
    {
        FUNC0(Out, Bpp, RopInfo, Flags, SourceBpp, 0);
        FUNC2(Out);
    }
    if (RopInfo->UsesPattern && 0 != (Flags & FLAG_PATTERNSURFACE))
    {
        FUNC3(Out, "Pattern = DIB_GetSourceIndex(BltInfo->PatternSurface, PatternX, PatternY);\n");
        FUNC3(Out, "if (BltInfo->PatternSurface->sizlBitmap.cx <= ++PatternX)\n");
        FUNC3(Out, "{\n");
        FUNC3(Out, "PatternX -= BltInfo->PatternSurface->sizlBitmap.cx;\n");
        FUNC3(Out, "}\n");
    }
    if ((RopInfo->UsesSource && 0 == (Flags & FLAG_FORCENOUSESSOURCE) &&
            Bpp != SourceBpp) ||
            (RopInfo->UsesPattern && 0 != (Flags & FLAG_PATTERNSURFACE)))
    {
        FUNC3(Out, "\n");
    }
    FUNC1(Out, Bpp, RopInfo, SourceBpp, 16);
    FUNC3(Out, ";\n");
    FUNC2(Out);
    FUNC3(Out, "\n");
    FUNC3(Out, "DestPtr = (PULONG)((char *) DestPtr + %u);\n", Bpp / 8);
}