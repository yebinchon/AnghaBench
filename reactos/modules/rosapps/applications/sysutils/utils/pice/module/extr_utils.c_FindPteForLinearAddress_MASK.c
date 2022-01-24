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
typedef  int ULONG ;
typedef  int* PULONG ;
typedef  scalar_t__ PEPROCESS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int _PAGE_4M ; 
 int _PAGE_PRESENT ; 
 int _PAGE_SIZE ; 

PULONG FUNC5(ULONG address)
{
	PULONG pPGD;
	PULONG pPTE;
	BOOLEAN bResult = FALSE;
	PEPROCESS my_current = FUNC3();

    FUNC2();

	address &= (~(_PAGE_SIZE-1));

	if(my_current)
	{
		pPGD = FUNC0(address);
        if(pPGD && ((*pPGD)&_PAGE_PRESENT))
        {
            // not large page
            if(!((*pPGD)&_PAGE_4M))
			{
				pPTE = FUNC1(address);
				if(pPTE)
				{
                    FUNC4();
					return pPTE;
				}
			}
			// large page
			else
			{
                FUNC4();
				return NULL;
			}
		}
	}

    FUNC4();
	return NULL;
}