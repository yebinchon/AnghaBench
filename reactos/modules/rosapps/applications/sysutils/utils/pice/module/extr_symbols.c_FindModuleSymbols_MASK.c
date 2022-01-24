#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_9__ {scalar_t__ size; int /*<<< orphan*/  name; scalar_t__ BaseAddress; struct TYPE_9__* next; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ PICE_SYMBOLFILE_HEADER ;
typedef  TYPE_2__* PDEBUG_MODULE ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_1__** apSymbols ; 
 TYPE_2__* pdebug_module_head ; 
 TYPE_2__* pdebug_module_tail ; 
 scalar_t__ ulNumSymbolsLoaded ; 

PICE_SYMBOLFILE_HEADER* FUNC4(ULONG addr)
{
    ULONG start,end,i;
	PDEBUG_MODULE pd = pdebug_module_head;

    FUNC1((0,"FindModuleSymbols(%x)\n",addr));
    if(FUNC0())
    {
        i=0;
        pd = pdebug_module_head;
        do
        {
			FUNC1((0,"pd: %x\n", pd));
            if(pd->size)
			{
                start = (ULONG)pd->BaseAddress;
                end = start + pd->size;
                FUNC1((0,"FindModuleSymbols(): %S %x-%x\n",pd->name,start,end));
                if(addr>=start && addr<end)
                {
                    FUNC1((0,"FindModuleSymbols(): address matches %S %x-%x\n",pd->name,start,end));
                    for(i=0;i<ulNumSymbolsLoaded;i++)
                    {
						FUNC1((0,"%S -", apSymbols[i]->name ));
                        if(FUNC2(pd->name,apSymbols[i]->name) == 0)
						{
							if(FUNC3(apSymbols[i]))
	                            return apSymbols[i];
							else
								return NULL;
						}
                    }
                }
            }
        }while((pd = pd->next) != pdebug_module_tail);
    }

    return NULL;
}