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
typedef  int uint32_t ;
struct MemBitReader {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct MemBitReader*,int) ; 

__attribute__((used)) static uint32_t FUNC1(struct MemBitReader *br)
{
    uint32_t val;
    switch (FUNC0(br, 2)) {
    case 0:
        return FUNC0(br, 4);
    case 1:
        val = FUNC0(br, 8);
        if (val >= 16)
            return val;
        return 0xFFFFFF00 | (val << 4) | FUNC0(br, 4);
    case 2:
        return FUNC0(br, 16);
    default:
        return FUNC0(br, 32);
    }
}