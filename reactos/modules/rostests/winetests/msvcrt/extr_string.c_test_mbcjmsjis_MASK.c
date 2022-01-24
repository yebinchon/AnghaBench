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
    unsigned int jmsjis[][2] = { {0x80fc, 0}, {0x813f, 0}, {0x8140, 0x2121},
                                 {0x817e, 0x215f}, {0x817f, 0}, {0x8180, 0x2160},
                                 {0x819e, 0x217e}, {0x819f, 0x2221}, {0x81fc, 0x227e},
                                 {0x81fd, 0}, {0x9ffc, 0x5e7e}, {0x9ffd, 0},
                                 {0xa040, 0}, {0xdffc, 0}, {0xe040, 0x5f21},
                                 {0xeffc, 0x7e7e}, {0xf040, 0}, {0x21, 0}, {0, 0}};
    int cp[] = { 932, 936, 939, 950, 1361, _MB_CP_SBCS };
    unsigned int i, j;
    int prev_cp = FUNC1();

    for (i = 0; i < FUNC0(cp); i++)
    {
        FUNC3(cp[i]);
        for (j = 0; jmsjis[j][0] != 0; j++)
        {
            unsigned int ret, exp;
            ret = FUNC2(jmsjis[j][0]);
            exp = (cp[i] == 932) ? jmsjis[j][1] : jmsjis[j][0];
            FUNC4(ret == exp, "Expected 0x%x, got 0x%x (0x%x, codepage=%d)\n",
               exp, ret, jmsjis[j][0], cp[i]);
        }
    }
    FUNC3(prev_cp);
}