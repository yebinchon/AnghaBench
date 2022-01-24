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
 unsigned int FUNC0 () ; 
 unsigned int FUNC1 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(void)
{
    static const unsigned int mbcmbb_932[][2] = {
        {0x829e, 0x829e}, {0x829f, 0xa7}, {0x82f1, 0xdd}, {0x82f2, 0x82f2},
        {0x833f, 0x833f}, {0x8340, 0xa7}, {0x837e, 0xd0}, {0x837f, 0x837f},
        {0x8380, 0xd1}, {0x8396, 0xb9}, {0x8397, 0x8397}, {0x813f, 0x813f},
        {0x8140, 0x20}, {0x814c, 0x814c}, {0x814f, 0x5e}, {0x8197, 0x40},
        {0x8198, 0x8198}, {0x8258, 0x39}, {0x8259, 0x8259}, {0x825f, 0x825f},
        {0x8260, 0x41}, {0x82f1, 0xdd}, {0x82f2, 0x82f2}, {0,0}};
    unsigned int exp, ret, i;
    unsigned int prev_cp = FUNC0();

    FUNC2(932);
    for (i = 0; mbcmbb_932[i][0] != 0; i++)
    {
        ret = FUNC1(mbcmbb_932[i][0]);
        exp = mbcmbb_932[i][1];
        FUNC3(ret == exp, "Expected 0x%x, got 0x%x\n", exp, ret);
    }
    FUNC2(prev_cp);
}