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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2( WCHAR *manufacturer )
{
    unsigned int tmp, regs[4] = {0, 0, 0, 0};

    FUNC0( 0, regs );
    tmp = regs[2];      /* swap edx and ecx */
    regs[2] = regs[3];
    regs[3] = tmp;

    FUNC1( regs + 1, 12, manufacturer );
}