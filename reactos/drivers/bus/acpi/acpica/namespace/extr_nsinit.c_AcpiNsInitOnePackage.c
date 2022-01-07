
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {int Flags; } ;
struct TYPE_7__ {TYPE_1__ Package; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;
typedef scalar_t__ ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsGetPackageArguments (TYPE_2__*) ;
 int AcpiDsInitPackageElement ;
 TYPE_2__* AcpiNsGetAttachedObject (int *) ;
 int AcpiUtWalkPackageTree (TYPE_2__*,int *,int ,int *) ;

ACPI_STATUS
AcpiNsInitOnePackage (
    ACPI_HANDLE ObjHandle,
    UINT32 Level,
    void *Context,
    void **ReturnValue)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_NAMESPACE_NODE *Node = (ACPI_NAMESPACE_NODE *) ObjHandle;


    ObjDesc = AcpiNsGetAttachedObject (Node);
    if (!ObjDesc)
    {
        return (AE_OK);
    }



    if (ObjDesc->Package.Flags & AOPOBJ_DATA_VALID)
    {
        return (AE_OK);
    }

    Status = AcpiDsGetPackageArguments (ObjDesc);
    if (ACPI_FAILURE (Status))
    {
        return (AE_OK);
    }

    Status = AcpiUtWalkPackageTree (ObjDesc, ((void*)0), AcpiDsInitPackageElement,
        ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return (AE_OK);
    }

    ObjDesc->Package.Flags |= AOPOBJ_DATA_VALID;
    return (AE_OK);
}
