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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(FILE *Out, unsigned Bpp)
{
    unsigned RopCode;

    FUNC1(Out);
    FUNC2(Out, "\n");
    FUNC2(Out, "static void (*PrimitivesTable[256])(PBLTINFO) =\n");
    FUNC2(Out, "{\n");
    for (RopCode = 0; RopCode < 256; RopCode++)
    {
        FUNC3(Out, Bpp, FUNC0(RopCode));
        if (RopCode < 255)
        {
            FUNC2(Out, ",");
        }
        FUNC2(Out, "\n");
    }
    FUNC2(Out, "};\n");
}