
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_6__ {scalar_t__ ReferenceCount; int Type; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_CPU_FLAGS ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_GET_FUNCTION_NAME ;
 scalar_t__ ACPI_MAX_REFERENCE_COUNT ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AcpiGbl_ReferenceCountLock ;
 int AcpiOsAcquireLock (int ) ;
 int AcpiOsReleaseLock (int ,int ) ;
 int AcpiUtDeleteInternalObj (TYPE_2__*) ;
 int AcpiUtGetObjectTypeName (TYPE_2__*) ;


 int UtUpdateRefCount ;

__attribute__((used)) static void
AcpiUtUpdateRefCount (
    ACPI_OPERAND_OBJECT *Object,
    UINT32 Action)
{
    UINT16 OriginalCount;
    UINT16 NewCount = 0;
    ACPI_CPU_FLAGS LockFlags;
    char *Message;


    ACPI_FUNCTION_NAME (UtUpdateRefCount);


    if (!Object)
    {
        return;
    }





    LockFlags = AcpiOsAcquireLock (AcpiGbl_ReferenceCountLock);
    OriginalCount = Object->Common.ReferenceCount;



    switch (Action)
    {
    case 128:

        NewCount = OriginalCount + 1;
        Object->Common.ReferenceCount = NewCount;
        AcpiOsReleaseLock (AcpiGbl_ReferenceCountLock, LockFlags);



        if (!OriginalCount)
        {
            ACPI_WARNING ((AE_INFO,
                "Obj %p, Reference Count was zero before increment\n",
                Object));
        }

        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS,
            "Obj %p Type %.2X [%s] Refs %.2X [Incremented]\n",
            Object, Object->Common.Type,
            AcpiUtGetObjectTypeName (Object), NewCount));
        Message = "Incremement";
        break;

    case 129:



        if (OriginalCount)
        {
            NewCount = OriginalCount - 1;
            Object->Common.ReferenceCount = NewCount;
        }

        AcpiOsReleaseLock (AcpiGbl_ReferenceCountLock, LockFlags);

        if (!OriginalCount)
        {
            ACPI_WARNING ((AE_INFO,
                "Obj %p, Reference Count is already zero, cannot decrement\n",
                Object));
        }

        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_ALLOCATIONS,
            "%s: Obj %p Type %.2X Refs %.2X [Decremented]\n",
            ACPI_GET_FUNCTION_NAME, Object, Object->Common.Type, NewCount));



        if (NewCount == 0)
        {
            AcpiUtDeleteInternalObj (Object);
        }
        Message = "Decrement";
        break;

    default:

        AcpiOsReleaseLock (AcpiGbl_ReferenceCountLock, LockFlags);
        ACPI_ERROR ((AE_INFO, "Unknown Reference Count action (0x%X)",
            Action));
        return;
    }





    if (NewCount > ACPI_MAX_REFERENCE_COUNT)
    {
        ACPI_WARNING ((AE_INFO,
            "Large Reference Count (0x%X) in object %p, Type=0x%.2X Operation=%s",
            NewCount, Object, Object->Common.Type, Message));
    }
}
