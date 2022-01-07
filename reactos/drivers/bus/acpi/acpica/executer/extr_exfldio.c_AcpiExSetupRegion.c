
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_10__ {scalar_t__ SpaceId; scalar_t__ Length; int Node; } ;
struct TYPE_9__ {scalar_t__ BaseByteOffset; scalar_t__ AccessByteWidth; int Node; TYPE_4__* RegionObj; } ;
struct TYPE_8__ {scalar_t__ Type; int Flags; } ;
struct TYPE_11__ {TYPE_3__ Region; TYPE_2__ CommonField; TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_ADR_SPACE_GSBUS ;
 scalar_t__ ACPI_ADR_SPACE_IPMI ;
 scalar_t__ ACPI_ADR_SPACE_SMBUS ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 scalar_t__ ACPI_ROUND_UP (scalar_t__,scalar_t__) ;
 scalar_t__ ACPI_TYPE_REGION ;
 int AE_AML_INVALID_SPACE_ID ;
 int AE_AML_OPERAND_TYPE ;
 int AE_AML_REGION_LIMIT ;
 int AE_INFO ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsGetRegionArguments (TYPE_4__*) ;
 scalar_t__ AcpiGbl_EnableInterpreterSlack ;
 int AcpiIsValidSpaceId (scalar_t__) ;
 int AcpiUtGetNodeName (int ) ;
 int AcpiUtGetObjectTypeName (TYPE_4__*) ;
 int ExSetupRegion ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiExSetupRegion (
    ACPI_OPERAND_OBJECT *ObjDesc,
    UINT32 FieldDatumByteOffset)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_OPERAND_OBJECT *RgnDesc;
    UINT8 SpaceId;


    ACPI_FUNCTION_TRACE_U32 (ExSetupRegion, FieldDatumByteOffset);


    RgnDesc = ObjDesc->CommonField.RegionObj;



    if (RgnDesc->Common.Type != ACPI_TYPE_REGION)
    {
        ACPI_ERROR ((AE_INFO, "Needed Region, found type 0x%X (%s)",
            RgnDesc->Common.Type,
            AcpiUtGetObjectTypeName (RgnDesc)));

        return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
    }

    SpaceId = RgnDesc->Region.SpaceId;



    if (!AcpiIsValidSpaceId (SpaceId))
    {
        ACPI_ERROR ((AE_INFO,
            "Invalid/unknown Address Space ID: 0x%2.2X", SpaceId));
        return_ACPI_STATUS (AE_AML_INVALID_SPACE_ID);
    }





    if (!(RgnDesc->Common.Flags & AOPOBJ_DATA_VALID))
    {
        Status = AcpiDsGetRegionArguments (RgnDesc);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
    }





    if (SpaceId == ACPI_ADR_SPACE_SMBUS ||
        SpaceId == ACPI_ADR_SPACE_GSBUS ||
        SpaceId == ACPI_ADR_SPACE_IPMI)
    {


        return_ACPI_STATUS (AE_OK);
    }
    if (RgnDesc->Region.Length <
        (ObjDesc->CommonField.BaseByteOffset + FieldDatumByteOffset +
        ObjDesc->CommonField.AccessByteWidth))
    {
        if (AcpiGbl_EnableInterpreterSlack)
        {





            if (ACPI_ROUND_UP (RgnDesc->Region.Length,
                    ObjDesc->CommonField.AccessByteWidth) >=
                ((ACPI_SIZE) ObjDesc->CommonField.BaseByteOffset +
                    ObjDesc->CommonField.AccessByteWidth +
                    FieldDatumByteOffset))
            {
                return_ACPI_STATUS (AE_OK);
            }
        }

        if (RgnDesc->Region.Length < ObjDesc->CommonField.AccessByteWidth)
        {





            ACPI_ERROR ((AE_INFO,
                "Field [%4.4s] access width (%u bytes) "
                "too large for region [%4.4s] (length %u)",
                AcpiUtGetNodeName (ObjDesc->CommonField.Node),
                ObjDesc->CommonField.AccessByteWidth,
                AcpiUtGetNodeName (RgnDesc->Region.Node),
                RgnDesc->Region.Length));
        }





        ACPI_ERROR ((AE_INFO,
            "Field [%4.4s] Base+Offset+Width %u+%u+%u "
            "is beyond end of region [%4.4s] (length %u)",
            AcpiUtGetNodeName (ObjDesc->CommonField.Node),
            ObjDesc->CommonField.BaseByteOffset,
            FieldDatumByteOffset, ObjDesc->CommonField.AccessByteWidth,
            AcpiUtGetNodeName (RgnDesc->Region.Node),
            RgnDesc->Region.Length));

        return_ACPI_STATUS (AE_AML_REGION_LIMIT);
    }

    return_ACPI_STATUS (AE_OK);
}
