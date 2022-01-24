#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; scalar_t__ size; struct TYPE_5__* next; } ;
typedef  TYPE_1__* PDEBUG_MODULE ;
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int DEBUG_MODULE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* pdebug_module_head ; 
 TYPE_1__* pdebug_module_tail ; 

PDEBUG_MODULE FUNC6(LPSTR p)
{
    PDEBUG_MODULE pd;

	FUNC3();
	FUNC2((0,"IsModuleLoaded(%s)\n",p));

    if(FUNC0())
    {
        pd = pdebug_module_head;
        do
        {
			char temp[DEBUG_MODULE_NAME_LEN];
            FUNC2((0,"module (%x) %S\n",pd->size,pd->name));
			FUNC1(temp,pd->name);
            if(pd->size && FUNC5(p,temp) == 0)
            {
                FUNC2((0,"module %S is loaded!\n",pd->name));
				FUNC4();
				return pd;
            }
        }while((pd = pd->next)!=pdebug_module_tail);
    }
	FUNC4();
    return NULL;
}