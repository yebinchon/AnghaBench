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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC2(FILE *Out, unsigned Bpp)
{
    FUNC0(Out);
    if (32 != Bpp)
    {
        if (8 < Bpp)
        {
            FUNC1(Out, "LeftCount = ((ULONG_PTR) DestBase >> 1) & 0x01;\n");
        }
        else
        {
            FUNC1(Out, "LeftCount = (ULONG_PTR) DestBase & 0x03;\n");
            FUNC1(Out, "if ((ULONG)(BltInfo->DestRect.right - BltInfo->DestRect.left) < "
                   "LeftCount)\n");
            FUNC1(Out, "{\n");
            FUNC1(Out, "LeftCount = BltInfo->DestRect.right - "
                   "BltInfo->DestRect.left;\n");
            FUNC1(Out, "}\n");
        }
        FUNC1(Out, "CenterCount = (BltInfo->DestRect.right - BltInfo->DestRect.left -\n");
        FUNC1(Out, "               LeftCount) / %u;\n", 32 / Bpp);
        FUNC1(Out, "RightCount = (BltInfo->DestRect.right - BltInfo->DestRect.left -\n");
        FUNC1(Out, "              LeftCount - %u * CenterCount);\n", 32 / Bpp);
    }
    else
    {
        FUNC1(Out, "CenterCount = BltInfo->DestRect.right - BltInfo->DestRect.left;\n");
    }
}