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
    FUNC1(Out, "\n");
    FUNC1(Out, "BOOLEAN\n");
    FUNC1(Out, "DIB_%uBPP_BitBlt(PBLTINFO BltInfo)\n", Bpp);
    FUNC1(Out, "{\n");
    FUNC1(Out, "PrimitivesTable[BltInfo->Rop4 & 0xff](BltInfo);\n");
    FUNC1(Out, "\n");
    FUNC1(Out, "return TRUE;\n");
    FUNC1(Out, "}\n");
}