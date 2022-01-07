
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int Flags; int Length; int Address; int SpaceId; int * Node; } ;
struct TYPE_8__ {int AmlStart; int AmlLength; int ScopeNode; } ;
struct TYPE_10__ {TYPE_2__ Region; TYPE_1__ Extra; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_EXEC (int ) ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_3__*) ;
 int ACPI_TYPE_REGION ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsExecuteArguments (int *,int ,int ,int ) ;
 TYPE_3__* AcpiNsGetSecondaryObject (TYPE_3__*) ;
 int AcpiUtAddAddressRange (int ,int ,int ,int *) ;
 int AcpiUtDisplayInitPathname (int ,int *,int *) ;
 int AcpiUtGetNodeName (int *) ;
 int DsGetRegionArguments ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsGetRegionArguments (
    ACPI_OPERAND_OBJECT *ObjDesc)
{
    ACPI_NAMESPACE_NODE *Node;
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ExtraDesc;


    ACPI_FUNCTION_TRACE_PTR (DsGetRegionArguments, ObjDesc);


    if (ObjDesc->Region.Flags & AOPOBJ_DATA_VALID)
    {
        return_ACPI_STATUS (AE_OK);
    }

    ExtraDesc = AcpiNsGetSecondaryObject (ObjDesc);
    if (!ExtraDesc)
    {
        return_ACPI_STATUS (AE_NOT_EXIST);
    }



    Node = ObjDesc->Region.Node;

    ACPI_DEBUG_EXEC (AcpiUtDisplayInitPathname (
        ACPI_TYPE_REGION, Node, ((void*)0)));

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "[%4.4s] OpRegion Arg Init at AML %p\n",
        AcpiUtGetNodeName (Node), ExtraDesc->Extra.AmlStart));



    Status = AcpiDsExecuteArguments (Node, ExtraDesc->Extra.ScopeNode,
        ExtraDesc->Extra.AmlLength, ExtraDesc->Extra.AmlStart);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Status = AcpiUtAddAddressRange (ObjDesc->Region.SpaceId,
        ObjDesc->Region.Address, ObjDesc->Region.Length, Node);
    return_ACPI_STATUS (Status);
}
