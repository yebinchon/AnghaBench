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
struct tagDESCRIPTOR {size_t Val; scalar_t__ Ti; } ;
typedef  int USHORT ;
typedef  int ULONG ;
struct TYPE_3__ {int Base_31_24; int Base_23_16; int Base_15_0; } ;
typedef  TYPE_1__* PGDT ;
typedef  struct tagDESCRIPTOR* PDESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

ULONG FUNC5(USHORT Segment,ULONG Offset)
{
    PGDT pGdt;
    ULONG result=0;
    PDESCRIPTOR pSel;
    USHORT OriginalSegment=Segment;

    FUNC1();

	pSel=(struct tagDESCRIPTOR*)&Segment;

	// get GDT pointer
	pGdt=FUNC2();
    FUNC0((0,"GetLinearAddress(): pGDT = %.8X\n",pGdt));
    FUNC0((0,"GetLinearAddress(): original Segment:Offset = %.4X:%.8X\n",Segment,Offset));

	// see if segment selector is in LDT
	if(pSel->Ti)
	{
		FUNC0((0,"GetLinearAddress(): Segment is in LDT\n"));
		// get LDT selector
		__asm__("\n\t \
			sldt %%ax\n\t \
			mov %%ax,%0"
			:"=m" (Segment));
		if(Segment)
		{
			FUNC0((0,"GetLinearAddress(): no LDT\n"));
			// get LDT selector
			pGdt=(PGDT)((pGdt[pSel->Val].Base_31_24<<24)|
					   (pGdt[pSel->Val].Base_23_16<<16)|
				       (pGdt[pSel->Val].Base_15_0));
			if(!FUNC3((ULONG)pGdt,0x8) )
				pGdt=0;
		}
		else
		{
			pGdt=0;
		}
	}

	if(pGdt && Segment)
	{
        FUNC0((0,"GetLinearAddress(): Segment:Offset = %.4X:%.8X\n",Segment,Offset));
		result=pGdt[OriginalSegment>>3].Base_15_0|
			   (pGdt[OriginalSegment>>3].Base_23_16<<16)|
			   (pGdt[OriginalSegment>>3].Base_31_24<<24);
		result+=Offset;
	}
	FUNC0((0,"GetLinearAddress(%.4X:%.8X)=%.8X\n",OriginalSegment,Offset,result));

    FUNC4();

	return result;
}