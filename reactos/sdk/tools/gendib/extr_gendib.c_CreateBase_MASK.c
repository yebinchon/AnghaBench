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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FLAG_BOTTOMUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC2(FILE *Out, int Source, int Flags, unsigned Bpp)
{
    const char *What = (Source ? "Source" : "Dest");

    FUNC0(Out);
    FUNC1(Out, "%sBase = (char *) BltInfo->%sSurface->pvScan0 +\n", What, What);
    if (0 == (Flags & FLAG_BOTTOMUP))
    {
        if (Source)
        {
            FUNC1(Out, "             BltInfo->SourcePoint.y *\n");
        }
        else
        {
            FUNC1(Out, "           BltInfo->DestRect.top *\n");
        }
    }
    else
    {
        if (Source)
        {
            FUNC1(Out, "             (BltInfo->SourcePoint.y +\n");
            FUNC1(Out, "              BltInfo->DestRect.bottom -\n");
            FUNC1(Out, "              BltInfo->DestRect.top - 1) *\n");
        }
        else
        {
            FUNC1(Out, "           (BltInfo->DestRect.bottom - 1) *\n");
        }
    }
    FUNC1(Out, "           %sBltInfo->%sSurface->lDelta +\n",
           Source ? "  " : "", What);
    if (Source)
    {
        FUNC1(Out, "             %sBltInfo->SourcePoint.x",
               16 < Bpp ? "" : "((");
    }
    else
    {
        FUNC1(Out, "           BltInfo->DestRect.left");
    }
    if (Bpp < 8)
    {
        FUNC1(Out, " / %u", 8 / Bpp);
    }
    else if (8 < Bpp)
    {
        FUNC1(Out, " * %u", Bpp / 8);
    }
    if (Source && Bpp <= 16)
    {
        FUNC1(Out, ") & ~ 0x3)");
    }
    FUNC1(Out, ";\n", Bpp / 8);
    if (Source && Bpp <= 16)
    {
        FUNC1(Out, "BaseSourcePixels = %u - (BltInfo->SourcePoint.x & 0x%x);\n",
               32 / Bpp, 32 / Bpp - 1);
    }
}