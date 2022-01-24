#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_14__ {struct TYPE_14__* next; int /*<<< orphan*/  EntryPoint; int /*<<< orphan*/  name; scalar_t__ size; scalar_t__ BaseAddress; } ;
struct TYPE_13__ {struct TYPE_13__* Flink; } ;
struct TYPE_11__ {int /*<<< orphan*/  Buffer; } ;
struct TYPE_10__ {int /*<<< orphan*/  Buffer; } ;
struct TYPE_12__ {scalar_t__ Length; scalar_t__ Base; TYPE_2__ BaseName; int /*<<< orphan*/  EntryPoint; TYPE_1__ FullName; } ;
typedef  int /*<<< orphan*/  POBJECT_HEADER ;
typedef  TYPE_3__* PMODULE_OBJECT ;
typedef  TYPE_4__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_3__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  MODULE_OBJECT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ kernel_end ; 
 TYPE_4__* pModuleListHead ; 
 TYPE_5__* pdebug_module_tail ; 

BOOLEAN FUNC7( void )
{
    PLIST_ENTRY current_entry;
	PMODULE_OBJECT current;
    POBJECT_HEADER current_obj;

	FUNC3();

	FUNC0( pModuleListHead );

	current_entry = pModuleListHead->Flink;

  	while (current_entry != (pModuleListHead)){

		current = FUNC1(current_entry,MODULE_OBJECT,ListEntry);

		FUNC2((0,"FullName: %S, BaseName: %S, Length: %ld, EntryPoint: %x\n", current->FullName.Buffer,
				current->BaseName.Buffer, current->Length, current->EntryPoint ));

		pdebug_module_tail->BaseAddress = current->Base;
		pdebug_module_tail->size = current->Length;
		FUNC5( pdebug_module_tail->name, current->BaseName.Buffer);
		pdebug_module_tail->EntryPoint = current->EntryPoint;

		pdebug_module_tail = pdebug_module_tail->next;

		if (current && FUNC6(current->BaseName.Buffer, L"ntoskrnl")==0)
		{
		   kernel_end = (ULONG)current->Base + current->Length;
		}
		current_entry = current_entry->Flink;
	}

	FUNC4();
	return TRUE;
}