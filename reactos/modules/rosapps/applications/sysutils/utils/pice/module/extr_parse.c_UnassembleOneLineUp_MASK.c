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
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__* tempCmd ; 
 scalar_t__ ulOldDisasmOffset ; 
 int /*<<< orphan*/  usOldDisasmSegment ; 

void FUNC5(void)
{
    ULONG addr,addrorg,addrbefore,start,end,addrstart;
    LONG offset;
    LPSTR pSymbol;

    FUNC0((0,"UnassembleOneLineUp()\n"));

    addrorg = addr = FUNC3(usOldDisasmSegment,ulOldDisasmOffset);

    FUNC0((0,"UnassembleOneLineUp(): addrorg = %.8X\n",addr));

    offset = 1;

    if((pSymbol = FUNC2(addrorg-offset,&start,&end)) )
    {
        offset = addrorg - start;
        FUNC0((0,"UnassembleOneLineUp(): %s @ offset = %u\n",pSymbol,offset));
    }
    else
    {
        // max instruction length is 15 bytes
        offset = 15;
    }

    addrstart = addrorg;

    // start at current address less offset
    addr = addrorg - offset;
    do
    {
        FUNC0((0,"UnassembleOneLineUp(): offset = %u addrorg %x addr %x\n",offset,addrorg,addr));
        // disassemble while not reaching current instruction
        addrbefore = addr;
        tempCmd[0]=0;
	    FUNC1(&addr,tempCmd);
        FUNC0((0,"%.8X: %s\n",addrbefore,tempCmd));
    }while((addr != addrorg) && (addrbefore < addrorg));

    if((addrorg - addrstart)<=0)
        ulOldDisasmOffset--;
    else
        ulOldDisasmOffset -= (addrorg - addrbefore);

    FUNC0((0,"UnassembleOneLineUp(): new addr = %.4X:%.8X\n",usOldDisasmSegment,ulOldDisasmOffset));

    FUNC4();
}