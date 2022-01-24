#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ USHORT ;
typedef  size_t ULONG ;
struct TYPE_3__ {int Offset_31_16; int Offset_15_0; int DescType; int /*<<< orphan*/  Dpl; scalar_t__ Selector; } ;
typedef  TYPE_1__* PIDT ;
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  OUTPUT_WINDOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tempCmd ; 

void FUNC4(PIDT pIdt,ULONG i)
{
    USHORT seg;
    ULONG offset;
    LPSTR pSym;

    seg = (USHORT)pIdt[i].Selector;
    offset = (pIdt[i].Offset_31_16<<16)|(pIdt[i].Offset_15_0);

    switch(pIdt[i].DescType)
	{
		// task gate
		case 0x5:
			FUNC1(tempCmd,"(%0.4X) %0.4X:%0.8X %u [task]\n",i,
															seg,
															FUNC0((USHORT)seg,0),
															pIdt[i].Dpl);
			break;
		// interrupt gate
		case 0x6:
		case 0xE:
			if(FUNC3(&pSym,FUNC0((USHORT)seg,offset)))
			{
				FUNC1(tempCmd,"(%0.4X) %0.4X:%0.8X %u [int] (%s)\n",i,
																	seg,
																	offset,
																	pIdt[i].Dpl,
																	pSym);
			}
			else
			{
				FUNC1(tempCmd,"(%0.4X) %0.4X:%0.8X %u [int]\n",i,
																	seg,
																	offset,
																	pIdt[i].Dpl);
			}
			break;
		// trap gate
		case 0x7:
		case 0xF:
			if(FUNC3(&pSym,FUNC0((USHORT)seg,offset)))
			{
				FUNC1(tempCmd,"(%0.4X) %0.4X:%0.8X %u [trap] (%s)\n",i,
																	seg,
																	offset,
																	pIdt[i].Dpl,
																	pSym);
			}
			else
			{
				FUNC1(tempCmd,"(%0.4X) %0.4X:%0.8X %u [trap]\n",i,
																	seg,
																	offset,
																	pIdt[i].Dpl);
			}
			break;
		default:
			FUNC1(tempCmd,"(%0.4X) INVALID\n",i);
			break;
	}
	FUNC2(OUTPUT_WINDOW,tempCmd);
}