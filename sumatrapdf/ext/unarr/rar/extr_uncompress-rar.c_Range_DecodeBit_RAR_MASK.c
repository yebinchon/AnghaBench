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
typedef  scalar_t__ UInt32 ;

/* Variables and functions */
 scalar_t__ PPMD_BIN_SCALE ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (void*,scalar_t__) ; 

__attribute__((used)) static UInt32 FUNC2(void *p, UInt32 size0)
{
    UInt32 value = FUNC1(p, PPMD_BIN_SCALE);
    UInt32 bit = value < size0 ? 0 : 1;
    if (!bit)
        FUNC0(p, 0, size0);
    else
        FUNC0(p, size0, PPMD_BIN_SCALE - size0);
    return bit;
}