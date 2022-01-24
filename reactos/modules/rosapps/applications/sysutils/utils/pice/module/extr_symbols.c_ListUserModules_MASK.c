#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_17__ {struct TYPE_17__* next; int /*<<< orphan*/  name; scalar_t__ EntryPoint; int /*<<< orphan*/  BaseAddress; int /*<<< orphan*/  size; } ;
struct TYPE_12__ {scalar_t__ Length; int /*<<< orphan*/  Buffer; } ;
struct TYPE_11__ {int /*<<< orphan*/  Buffer; } ;
struct TYPE_16__ {TYPE_2__ BaseDllName; scalar_t__ EntryPoint; int /*<<< orphan*/  BaseAddress; int /*<<< orphan*/  SizeOfImage; TYPE_1__ FullDllName; } ;
struct TYPE_15__ {struct TYPE_15__* Flink; } ;
struct TYPE_14__ {TYPE_3__* Ldr; } ;
struct TYPE_13__ {TYPE_5__ InLoadOrderModuleList; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_3__* PPEB_LDR_DATA ;
typedef  TYPE_4__* PPEB ;
typedef  TYPE_5__* PLIST_ENTRY ;
typedef  TYPE_6__* PLDR_DATA_TABLE_ENTRY ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_6__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DEBUG_MODULE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  InLoadOrderModuleList ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LDR_DATA_TABLE_ENTRY ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_7__* pdebug_module_tail ; 

BOOLEAN FUNC7( PPEB peb )
{
	PLIST_ENTRY UserModuleListHead;
	PLIST_ENTRY Entry;
	PLDR_DATA_TABLE_ENTRY Module;
	PPEB_LDR_DATA Ldr;

	FUNC3();

	Ldr = peb->Ldr;
	if( Ldr && FUNC4((ULONG)Ldr)){
		UserModuleListHead = &Ldr->InLoadOrderModuleList;
		FUNC0(FUNC4((ULONG)UserModuleListHead));
		Entry = UserModuleListHead->Flink;
		while (Entry != UserModuleListHead)
		{
			Module = FUNC1(Entry, LDR_DATA_TABLE_ENTRY, InLoadOrderModuleList);
			//DbgPrint("Module: %x, BaseAddress: %x\n", Module, Module->BaseAddress);

			FUNC2((0,"FullName: %S, BaseName: %S, Length: %ld, EntryPoint: %x, BaseAddress: %x\n", Module->FullDllName.Buffer,
					Module->BaseDllName.Buffer, Module->SizeOfImage, Module->EntryPoint, Module->BaseAddress ));

			pdebug_module_tail->size = Module->SizeOfImage;
			pdebug_module_tail->BaseAddress = Module->BaseAddress;
			pdebug_module_tail->EntryPoint = (PVOID)(Module->EntryPoint);
			FUNC0(Module->BaseDllName.Length<DEBUG_MODULE_NAME_LEN); //name length is limited
			FUNC6( pdebug_module_tail->name, Module->BaseDllName.Buffer );
			pdebug_module_tail = pdebug_module_tail->next;

			Entry = Entry->Flink;
		}
	}
	FUNC5();
	return TRUE;
}