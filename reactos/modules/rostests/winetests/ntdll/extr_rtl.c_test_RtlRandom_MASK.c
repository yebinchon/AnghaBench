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
typedef  int /*<<< orphan*/  res ;
typedef  scalar_t__ ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,scalar_t__,...) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    int i, j;
    ULONG seed;
    ULONG res[512];

    if (!&pRtlRandom)
    {
        FUNC2("RtlRandom is not available\n");
        return;
    }

    seed = 0;
    for (i = 0; i < sizeof(res) / sizeof(res[0]); i++)
    {
        res[i] = FUNC1(&seed);
        FUNC0(seed != res[i], "%i: seed is same as res %x\n", i, seed);
        for (j = 0; j < i; j++)
            FUNC0(res[i] != res[j], "res[%i] (%x) is same as res[%i] (%x)\n", j, res[j], i, res[i]);
    }
}