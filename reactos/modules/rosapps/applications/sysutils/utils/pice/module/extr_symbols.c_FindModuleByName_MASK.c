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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  name; scalar_t__ size; struct TYPE_5__* next; } ;
typedef  TYPE_1__* PDEBUG_MODULE ;
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  CP_ACP ; 
 int DEBUG_MODULE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* pdebug_module_head ; 
 TYPE_1__* pdebug_module_tail ; 

PDEBUG_MODULE FUNC4(LPSTR modname)
{
    PDEBUG_MODULE pd;
	WCHAR tempstr[DEBUG_MODULE_NAME_LEN];

    FUNC1((0,"FindModuleFromAddress()\n"));
	if( !FUNC2(CP_ACP, NULL, modname, -1, tempstr, DEBUG_MODULE_NAME_LEN ) )
	{
		FUNC1((0,"Can't convert module name.\n"));
		return NULL;
	}

    if(FUNC0())
    {
        pd = pdebug_module_head;
        do
        {
			if(pd->size)
			{
				if(FUNC3(tempstr,pd->name) == 0)
                {
                    FUNC1((0,"FindModuleByName(): found %S\n",pd->name));
                    return pd;
                }
            }
        }while((pd = pd->next) != pdebug_module_tail);
    }

    return NULL;
}