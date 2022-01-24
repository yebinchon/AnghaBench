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
 int /*<<< orphan*/  FUNC0 (int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2( WCHAR *name )
{
    unsigned int regs[4] = {0, 0, 0, 0};

    FUNC0( 0x80000000, regs );
    if (regs[0] >= 0x80000004)
    {
        FUNC0( 0x80000002, regs );
        FUNC1( regs, 16, name );
        FUNC0( 0x80000003, regs );
        FUNC1( regs, 16, name + 16 );
        FUNC0( 0x80000004, regs );
        FUNC1( regs, 16, name + 32 );
    }
}