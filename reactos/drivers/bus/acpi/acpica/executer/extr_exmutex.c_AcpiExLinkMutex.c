
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* Prev; TYPE_3__* Next; } ;
struct TYPE_8__ {TYPE_1__ Mutex; } ;
struct TYPE_7__ {TYPE_3__* AcquiredMutexList; } ;
typedef TYPE_2__ ACPI_THREAD_STATE ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;



__attribute__((used)) static void
AcpiExLinkMutex (
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_THREAD_STATE *Thread)
{
    ACPI_OPERAND_OBJECT *ListHead;


    ListHead = Thread->AcquiredMutexList;



    ObjDesc->Mutex.Prev = ((void*)0);
    ObjDesc->Mutex.Next = ListHead;



    if (ListHead)
    {
        ListHead->Mutex.Prev = ObjDesc;
    }



    Thread->AcquiredMutexList = ObjDesc;
}
