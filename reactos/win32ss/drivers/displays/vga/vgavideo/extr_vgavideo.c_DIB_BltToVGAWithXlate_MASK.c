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
typedef  int /*<<< orphan*/  XLATEOBJ ;
typedef  size_t ULONG ;
typedef  int* PUCHAR ;

/* Variables and functions */
 scalar_t__ GRA_D ; 
 scalar_t__ GRA_I ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int* maskbit ; 
 size_t vidmem ; 
 size_t* xconv ; 
 size_t* y80 ; 

void FUNC4(int x, int y, int w, int h, void *b, int Source_lDelta, XLATEOBJ* Xlate)
{
    PUCHAR pb, opb = b;
    ULONG i, j;
    ULONG x2 = x + w;
    ULONG y2 = y + h;
    ULONG offset;

    for (i = x; i < x2; i++)
    {
        pb = opb;
        offset = xconv[i] + y80[y];

        FUNC1((PUCHAR)GRA_I, 0x08);       // set the mask
        FUNC1((PUCHAR)GRA_D, maskbit[i]);

        if (0 == ((i - x) % 2))
        {
            for (j = y; j < y2; j++)
            {
                FUNC0(vidmem + offset);
                FUNC2(vidmem + offset, FUNC3(Xlate, (*pb & 0xf0) >> 4));
                offset += 80;
                pb += Source_lDelta;
            }
        }
        else
        {
            for (j = y; j < y2; j++)
            {
                FUNC0(vidmem + offset);
                FUNC2(vidmem + offset, FUNC3(Xlate, *pb & 0x0f));
                offset += 80;
                pb += Source_lDelta;
            }
        }

        if (0 != ((i - x) % 2))
            opb++;
    }
}