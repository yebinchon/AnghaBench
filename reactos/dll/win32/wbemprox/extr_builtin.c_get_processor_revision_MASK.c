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
typedef  unsigned int UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int*) ; 

__attribute__((used)) static UINT16 FUNC1(void)
{
    unsigned int regs[4] = {0, 0, 0, 0};
    FUNC0( 1, regs );
    return regs[0];
}