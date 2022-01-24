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
typedef  size_t ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** apSymbols ; 
 size_t ulNumSymbolsLoaded ; 

void FUNC4()
{
    ULONG i;

	FUNC1();

    if(ulNumSymbolsLoaded)
	{
        for(i=0;i<ulNumSymbolsLoaded;i++)
        {
    		FUNC0(*(0,"freeing [%u] %x\n",i,apSymbols[i]));
	    	FUNC3(apSymbols[i]);
            apSymbols[i] = NULL;
        }
        ulNumSymbolsLoaded = 0;
	}
    FUNC2();
}