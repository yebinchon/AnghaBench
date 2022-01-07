
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_14__ {struct TYPE_14__* next; int EntryPoint; int name; scalar_t__ size; scalar_t__ BaseAddress; } ;
struct TYPE_13__ {struct TYPE_13__* Flink; } ;
struct TYPE_11__ {int Buffer; } ;
struct TYPE_10__ {int Buffer; } ;
struct TYPE_12__ {scalar_t__ Length; scalar_t__ Base; TYPE_2__ BaseName; int EntryPoint; TYPE_1__ FullName; } ;
typedef int POBJECT_HEADER ;
typedef TYPE_3__* PMODULE_OBJECT ;
typedef TYPE_4__* PLIST_ENTRY ;
typedef int BOOLEAN ;


 int ASSERT (TYPE_4__*) ;
 TYPE_3__* CONTAINING_RECORD (TYPE_4__*,int ,int ) ;
 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int ListEntry ;
 int MODULE_OBJECT ;
 int PICE_wcscpy (int ,int ) ;
 int TRUE ;
 scalar_t__ _wcsicmp (int ,char*) ;
 scalar_t__ kernel_end ;
 TYPE_4__* pModuleListHead ;
 TYPE_5__* pdebug_module_tail ;

BOOLEAN ListDriverModules( void )
{
    PLIST_ENTRY current_entry;
 PMODULE_OBJECT current;
    POBJECT_HEADER current_obj;

 ENTER_FUNC();

 ASSERT( pModuleListHead );

 current_entry = pModuleListHead->Flink;

   while (current_entry != (pModuleListHead)){

  current = CONTAINING_RECORD(current_entry,MODULE_OBJECT,ListEntry);

  DPRINT((0,"FullName: %S, BaseName: %S, Length: %ld, EntryPoint: %x\n", current->FullName.Buffer,
    current->BaseName.Buffer, current->Length, current->EntryPoint ));

  pdebug_module_tail->BaseAddress = current->Base;
  pdebug_module_tail->size = current->Length;
  PICE_wcscpy( pdebug_module_tail->name, current->BaseName.Buffer);
  pdebug_module_tail->EntryPoint = current->EntryPoint;

  pdebug_module_tail = pdebug_module_tail->next;

  if (current && _wcsicmp(current->BaseName.Buffer, L"ntoskrnl")==0)
  {
     kernel_end = (ULONG)current->Base + current->Length;
  }
  current_entry = current_entry->Flink;
 }

 LEAVE_FUNC();
 return TRUE;
}
