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
typedef  scalar_t__ ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__* tempCmd ; 
 int /*<<< orphan*/  ulOldDisasmOffset ; 
 int /*<<< orphan*/  usOldDisasmSegment ; 

void FUNC4(void)
{
    ULONG addr,addrorg;

    FUNC0((0,"UnassembleOneLineDown()\n"));

    addrorg = addr = FUNC2(usOldDisasmSegment,ulOldDisasmOffset);

    FUNC0((0,"UnassembleOneLineDown(): addr = %.8X\n",addr));

    tempCmd[0]=0;
	FUNC1(&addr,tempCmd);

    FUNC0((0,"UnassembleOneLineDown(): addr after = %.8X\n",addr));

    ulOldDisasmOffset += (addr - addrorg);
    FUNC3();
}