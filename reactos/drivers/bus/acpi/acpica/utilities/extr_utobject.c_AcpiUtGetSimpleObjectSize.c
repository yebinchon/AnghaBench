
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_19__ {int Type; } ;
struct TYPE_18__ {int Class; int Node; } ;
struct TYPE_17__ {int Length; } ;
struct TYPE_16__ {int Length; } ;
struct TYPE_20__ {TYPE_5__ Common; TYPE_4__ Reference; TYPE_3__ Buffer; TYPE_2__ String; } ;
struct TYPE_15__ {int Ascii; } ;
struct TYPE_14__ {TYPE_1__ Name; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_6__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_OBJECT ;


 TYPE_12__* ACPI_CAST_PTR (int ,TYPE_6__*) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_6__*) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_6__*) ;
 int ACPI_NAMESPACE_NODE ;

 int ACPI_ROUND_UP_TO_NATIVE_WORD (int) ;






 int AE_AML_INTERNAL ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int AE_TYPE ;
 int AcpiNsGetPathnameLength (int ) ;
 int AcpiUtGetObjectTypeName (TYPE_6__*) ;
 int AcpiUtGetReferenceName (TYPE_6__*) ;
 int UtGetSimpleObjectSize ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtGetSimpleObjectSize (
    ACPI_OPERAND_OBJECT *InternalObject,
    ACPI_SIZE *ObjLength)
{
    ACPI_SIZE Length;
    ACPI_SIZE Size;
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE_PTR (UtGetSimpleObjectSize, InternalObject);




    Length = sizeof (ACPI_OBJECT);



    if (!InternalObject)
    {




        *ObjLength = ACPI_ROUND_UP_TO_NATIVE_WORD (Length);
        return_ACPI_STATUS (AE_OK);
    }



    if (ACPI_GET_DESCRIPTOR_TYPE (InternalObject) == ACPI_DESC_TYPE_NAMED)
    {


        ACPI_ERROR ((AE_INFO,
            "Received a namespace node [%4.4s] "
            "where an operand object is required",
            ACPI_CAST_PTR (ACPI_NAMESPACE_NODE, InternalObject)->Name.Ascii));
        return_ACPI_STATUS (AE_AML_INTERNAL);
    }







    switch (InternalObject->Common.Type)
    {
    case 128:

        Length += (ACPI_SIZE) InternalObject->String.Length + 1;
        break;

    case 133:

        Length += (ACPI_SIZE) InternalObject->Buffer.Length;
        break;

    case 132:
    case 129:
    case 130:



        break;

    case 131:

        switch (InternalObject->Reference.Class)
        {
        case 134:




            Size = AcpiNsGetPathnameLength (InternalObject->Reference.Node);
            if (!Size)
            {
                return_ACPI_STATUS (AE_BAD_PARAMETER);
            }

            Length += ACPI_ROUND_UP_TO_NATIVE_WORD (Size);
            break;

        default:





            ACPI_ERROR ((AE_INFO, "Cannot convert to external object - "
                "unsupported Reference Class [%s] 0x%X in object %p",
                AcpiUtGetReferenceName (InternalObject),
                InternalObject->Reference.Class, InternalObject));
            Status = AE_TYPE;
            break;
        }
        break;

    default:

        ACPI_ERROR ((AE_INFO, "Cannot convert to external object - "
            "unsupported type [%s] 0x%X in object %p",
            AcpiUtGetObjectTypeName (InternalObject),
            InternalObject->Common.Type, InternalObject));
        Status = AE_TYPE;
        break;
    }







    *ObjLength = ACPI_ROUND_UP_TO_NATIVE_WORD (Length);
    return_ACPI_STATUS (Status);
}
