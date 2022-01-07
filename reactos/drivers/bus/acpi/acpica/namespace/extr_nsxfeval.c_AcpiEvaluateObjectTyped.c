
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Length; int * Pointer; } ;
struct TYPE_6__ {scalar_t__ Type; } ;
typedef scalar_t__ BOOLEAN ;
typedef scalar_t__ ACPI_STRING ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef int ACPI_OBJECT_LIST ;
typedef TYPE_1__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_2__ ACPI_BUFFER ;


 scalar_t__ ACPI_ALLOCATE_BUFFER ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE (int (*) (int ,scalar_t__,int *,TYPE_2__*,scalar_t__)) ;
 scalar_t__ ACPI_TYPE_ANY ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_NULL_OBJECT ;
 int AE_TYPE ;
 int AcpiEvaluateObject (int ,int *,int *,TYPE_2__*) ;
 int AcpiGetHandle (int ,scalar_t__,int *) ;
 char* AcpiNsGetExternalPathname (int ) ;
 int AcpiOsFree (int *) ;
 int AcpiUtGetTypeName (scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvaluateObjectTyped (
    ACPI_HANDLE Handle,
    ACPI_STRING Pathname,
    ACPI_OBJECT_LIST *ExternalParams,
    ACPI_BUFFER *ReturnBuffer,
    ACPI_OBJECT_TYPE ReturnType)
{
    ACPI_STATUS Status;
    BOOLEAN FreeBufferOnError = FALSE;
    ACPI_HANDLE TargetHandle;
    char *FullPathname;


    ACPI_FUNCTION_TRACE (AcpiEvaluateObjectTyped);




    if (!ReturnBuffer)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }

    if (ReturnBuffer->Length == ACPI_ALLOCATE_BUFFER)
    {
        FreeBufferOnError = TRUE;
    }



    TargetHandle = Handle;
    if (Pathname)
    {
        Status = AcpiGetHandle (Handle, Pathname, &TargetHandle);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
    }

    FullPathname = AcpiNsGetExternalPathname (TargetHandle);
    if (!FullPathname)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    Status = AcpiEvaluateObject (TargetHandle, ((void*)0), ExternalParams,
        ReturnBuffer);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }



    if (ReturnType == ACPI_TYPE_ANY)
    {
        goto Exit;
    }

    if (ReturnBuffer->Length == 0)
    {


        ACPI_ERROR ((AE_INFO, "%s did not return any object",
            FullPathname));
        Status = AE_NULL_OBJECT;
        goto Exit;
    }



    if (((ACPI_OBJECT *) ReturnBuffer->Pointer)->Type == ReturnType)
    {
        goto Exit;
    }



    ACPI_ERROR ((AE_INFO,
        "Incorrect return type from %s - received [%s], requested [%s]",
        FullPathname,
        AcpiUtGetTypeName (((ACPI_OBJECT *) ReturnBuffer->Pointer)->Type),
        AcpiUtGetTypeName (ReturnType)));

    if (FreeBufferOnError)
    {







        AcpiOsFree (ReturnBuffer->Pointer);
        ReturnBuffer->Pointer = ((void*)0);
    }

    ReturnBuffer->Length = 0;
    Status = AE_TYPE;

Exit:
    ACPI_FREE (FullPathname);
    return_ACPI_STATUS (Status);
}
