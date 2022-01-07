
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Length; int Pointer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_BUFFER ;


 scalar_t__ ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_ALLOCATE_LOCAL_BUFFER ;
 scalar_t__ ACPI_NO_BUFFER ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;

ACPI_STATUS
AcpiUtValidateBuffer (
    ACPI_BUFFER *Buffer)
{



    if (!Buffer)
    {
        return (AE_BAD_PARAMETER);
    }



    if ((Buffer->Length == ACPI_NO_BUFFER) ||
        (Buffer->Length == ACPI_ALLOCATE_BUFFER) ||
        (Buffer->Length == ACPI_ALLOCATE_LOCAL_BUFFER))
    {
        return (AE_OK);
    }



    if (!Buffer->Pointer)
    {
        return (AE_BAD_PARAMETER);
    }

    return (AE_OK);
}
