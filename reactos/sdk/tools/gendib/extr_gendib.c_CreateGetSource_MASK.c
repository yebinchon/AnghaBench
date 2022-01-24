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
struct TYPE_3__ {scalar_t__ RopCode; } ;
typedef  TYPE_1__* PROPINFO ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FLAG_FORCERAWSOURCEAVAIL ; 
 int FLAG_TRIVIALXLATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ ROPCODE_SRCCOPY ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 

__attribute__((used)) static void
FUNC3(FILE *Out, unsigned Bpp, PROPINFO RopInfo, int Flags,
                unsigned SourceBpp, unsigned Shift)
{
    const char *AssignOp;
    const char *Before;
    char After[8];

    FUNC0(Out);
    if (0 == Shift)
    {
        AssignOp = "=";
        Before = "";
        After[0] = '\0';
    }
    else
    {
        AssignOp = "|=";
        Before = "(";
        FUNC2(After, ") << %u", Shift);
    }

    if (ROPCODE_SRCCOPY != RopInfo->RopCode ||
            0 == (Flags & FLAG_TRIVIALXLATE) || Bpp != SourceBpp)
    {
        if (0 == (Flags & FLAG_FORCERAWSOURCEAVAIL) && SourceBpp <= 16)
        {
            FUNC1(Out, "if (0 == SourcePixels)\n");
            FUNC1(Out, "{\n");
            FUNC1(Out, "RawSource = *SourcePtr++;\n");
            FUNC1(Out, "SourcePixels = %u;\n", 32 / SourceBpp);
            FUNC1(Out, "}\n");
        }
        FUNC1(Out, "Source %s (%s", AssignOp, Before);
        if (0 == (Flags & FLAG_TRIVIALXLATE))
        {
            FUNC1(Out, "XLATEOBJ_iXlate(BltInfo->XlateSourceToDest, %s",
                   16 < SourceBpp ? "" : "(");
        }
        if (32 == SourceBpp)
        {
            FUNC1(Out, "*SourcePtr++");
        }
        else if (24 == SourceBpp)
        {
            FUNC1(Out, "*(PUSHORT) SourcePtr + (*((PBYTE) SourcePtr + 2) << 16)");
        }
        else
        {
            FUNC1(Out, "RawSource >> Shift%uBpp[SourcePixels]", SourceBpp);
        }
        if (0 == (Flags & FLAG_TRIVIALXLATE))
        {
            if (16 < SourceBpp)
            {
                FUNC1(Out, ")");
            }
            else
            {
                FUNC1(Out, ") & 0x%x)", (1 << SourceBpp) - 1);
            }
        }
        if (32 == Bpp)
        {
            FUNC1(Out, ")%s;\n", After);
        }
        else
        {
            FUNC1(Out, " & 0x%x)%s;\n", (1 << Bpp) - 1, After);
        }
        if (SourceBpp <= 16)
        {
            FUNC1(Out, "SourcePixels--;\n");
        }
        else if (24 == SourceBpp)
        {
            FUNC1(Out, "SourcePtr = (PULONG)((char *) SourcePtr + 3);\n");
        }
    }
}