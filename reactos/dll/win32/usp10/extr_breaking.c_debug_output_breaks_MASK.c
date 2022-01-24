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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  b_r 130 
#define  b_s 129 
#define  b_x 128 
 int /*<<< orphan*/  uniscribe ; 

__attribute__((used)) static void FUNC2(const short* breaks, int count)
{
    if (FUNC1(uniscribe))
    {
        int i;
        FUNC0("[");
        for (i = 0; i < count && i < 200; i++)
        {
            switch (breaks[i])
            {
                case b_x: FUNC0("x"); break;
                case b_r: FUNC0("!"); break;
                case b_s: FUNC0("+"); break;
                default: FUNC0("*");
            }
        }
        if (i == 200)
            FUNC0("...");
        FUNC0("]\n");
    }
}