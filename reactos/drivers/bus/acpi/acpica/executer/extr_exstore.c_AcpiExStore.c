
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int Class; int Value; int * Object; } ;
struct TYPE_15__ {int Type; int Flags; } ;
struct TYPE_17__ {TYPE_2__ Reference; TYPE_1__ Common; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_OBJECT (TYPE_3__*,int ,int ) ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_DUMP_ENTRY (TYPE_3__*,int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_3__*) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_3__*) ;
 int ACPI_IMPLICIT_CONVERSION ;
 int ACPI_LV_INFO ;







 int AE_AML_INTERNAL ;
 int AE_AML_NO_OPERAND ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int AOPOBJ_AML_CONSTANT ;
 int AcpiDsStoreObjectToLocal (int,int ,TYPE_3__*,int *) ;
 int AcpiExStoreObjectToIndex (TYPE_3__*,TYPE_3__*,int *) ;
 int AcpiExStoreObjectToNode (TYPE_3__*,int *,int *,int ) ;
 int AcpiUtGetObjectTypeName (TYPE_3__*) ;
 int ExStore ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExStore (
    ACPI_OPERAND_OBJECT *SourceDesc,
    ACPI_OPERAND_OBJECT *DestDesc,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_OPERAND_OBJECT *RefDesc = DestDesc;


    ACPI_FUNCTION_TRACE_PTR (ExStore, DestDesc);




    if (!SourceDesc || !DestDesc)
    {
        ACPI_ERROR ((AE_INFO, "Null parameter"));
        return_ACPI_STATUS (AE_AML_NO_OPERAND);
    }



    if (ACPI_GET_DESCRIPTOR_TYPE (DestDesc) == ACPI_DESC_TYPE_NAMED)
    {




        Status = AcpiExStoreObjectToNode (SourceDesc,
            (ACPI_NAMESPACE_NODE *) DestDesc, WalkState,
            ACPI_IMPLICIT_CONVERSION);

        return_ACPI_STATUS (Status);
    }



    switch (DestDesc->Common.Type)
    {
    case 128:

        break;

    case 129:



        if (DestDesc->Common.Flags & AOPOBJ_AML_CONSTANT)
        {
            return_ACPI_STATUS (AE_OK);
        }



    default:



        ACPI_ERROR ((AE_INFO,
            "Target is not a Reference or Constant object - [%s] %p",
            AcpiUtGetObjectTypeName (DestDesc), DestDesc));

        return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
    }
    switch (RefDesc->Reference.Class)
    {
    case 130:



        Status = AcpiExStoreObjectToNode (SourceDesc,
            RefDesc->Reference.Object,
            WalkState, ACPI_IMPLICIT_CONVERSION);
        break;

    case 132:



        Status = AcpiExStoreObjectToIndex (SourceDesc, RefDesc, WalkState);
        break;

    case 131:
    case 134:



        Status = AcpiDsStoreObjectToLocal (RefDesc->Reference.Class,
            RefDesc->Reference.Value, SourceDesc, WalkState);
        break;

    case 133:




        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "**** Write to Debug Object: Object %p [%s] ****:\n\n",
            SourceDesc, AcpiUtGetObjectTypeName (SourceDesc)));

        ACPI_DEBUG_OBJECT (SourceDesc, 0, 0);
        break;

    default:

        ACPI_ERROR ((AE_INFO, "Unknown Reference Class 0x%2.2X",
            RefDesc->Reference.Class));
        ACPI_DUMP_ENTRY (RefDesc, ACPI_LV_INFO);

        Status = AE_AML_INTERNAL;
        break;
    }

    return_ACPI_STATUS (Status);
}
