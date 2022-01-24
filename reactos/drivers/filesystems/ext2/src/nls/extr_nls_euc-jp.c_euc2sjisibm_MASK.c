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
 int FUNC0 (unsigned char*,unsigned char const,unsigned char const) ; 
 int FUNC1 (unsigned char*,unsigned char const,unsigned char const) ; 

__attribute__((used)) static inline int FUNC2(unsigned char *sjis, const unsigned char euc_hi,
                              const unsigned char euc_lo)
{
    int n;

#if 0
    if ((euc_hi == 0xA2) && (euc_lo == 0xCC)) {
        sjis[0] = 0xFA;
        sjis[1] = 0x54;
        return 2;
    } else if ((euc_hi == 0xA2) && (euc_lo == 0xE8)) {
        sjis[0] = 0xFA;
        sjis[1] = 0x5B;
        return 2;
    }
#endif
    if ((n = FUNC0(sjis, euc_hi, euc_lo))) {
        return n;
    } else if ((n = FUNC1(sjis, euc_hi, euc_lo))) {
        return n;
    }

    return 0;
}