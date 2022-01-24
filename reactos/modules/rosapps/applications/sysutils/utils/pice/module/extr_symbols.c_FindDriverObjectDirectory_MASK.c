#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* Flink; } ;
struct TYPE_11__ {TYPE_3__ head; } ;
struct TYPE_8__ {int /*<<< orphan*/  Buffer; } ;
struct TYPE_9__ {TYPE_1__ Name; } ;
typedef  TYPE_2__* POBJECT_HEADER ;
typedef  int /*<<< orphan*/ * POBJECT ;
typedef  TYPE_3__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/ * PDIRECTORY_OBJECT ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  Entry ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  OBJECT_HEADER ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__** pNameSpaceRoot ; 

POBJECT FUNC6( void )
{
    PLIST_ENTRY current;
    POBJECT_HEADER current_obj;
	PDIRECTORY_OBJECT pd;

	FUNC2();

	if( pNameSpaceRoot && *pNameSpaceRoot ){
		current = (*pNameSpaceRoot)->head.Flink;
		while (current!=(&((*pNameSpaceRoot)->head)))
		{
			current_obj = FUNC0(current,OBJECT_HEADER,Entry);
	   	 	FUNC1((0,"Scanning %S\n",current_obj->Name.Buffer));
			if (FUNC5(current_obj->Name.Buffer, L"Modules")==0)
			{
				pd=FUNC3(current_obj);
				FUNC1(*(0,"Found it %x\n",pd));
				return pd;
			}
		  	current = current->Flink;
		}
	}
	FUNC4();
	return NULL;
}