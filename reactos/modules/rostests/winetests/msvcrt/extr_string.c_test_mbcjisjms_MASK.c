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
 unsigned int FUNC0 (int*) ; 
 int _MB_CP_SBCS ; 
 int FUNC1 () ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,unsigned int,unsigned int,unsigned int,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    /* List of value-pairs to test. The test assumes the last pair to be {0, ..} */
    unsigned int jisjms[][2] = { {0x2020, 0}, {0x2021, 0}, {0x2120, 0}, {0x2121, 0x8140},
                                 {0x7f7f, 0}, {0x7f7e, 0}, {0x7e7f, 0}, {0x7e7e, 0xeffc},
                                 {0x255f, 0x837e}, {0x2560, 0x8380}, {0x2561, 0x8381},
                                 {0x2121FFFF, 0}, {0x2223, 0x81a1}, {0x237e, 0x829e}, {0, 0}};
    int cp[] = { 932, 936, 939, 950, 1361, _MB_CP_SBCS };
    unsigned int i, j;
    int prev_cp = FUNC1();

    for (i = 0; i < FUNC0(cp); i++)
    {
        FUNC3(cp[i]);
        for (j = 0; jisjms[j][0] != 0; j++)
        {
            unsigned int ret, exp;
            ret = FUNC2(jisjms[j][0]);
            exp = (cp[i] == 932) ? jisjms[j][1] : jisjms[j][0];
            FUNC4(ret == exp, "Expected 0x%x, got 0x%x (0x%x, codepage=%d)\n",
               exp, ret, jisjms[j][0], cp[i]);
        }
    }
    FUNC3(prev_cp);
}