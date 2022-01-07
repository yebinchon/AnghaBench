
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_19__ {int Type; } ;
struct TYPE_18__ {TYPE_1__* Node; int TargetType; TYPE_5__** Where; int Value; int Class; } ;
struct TYPE_21__ {TYPE_3__ Common; TYPE_2__ Reference; } ;
struct TYPE_20__ {int Opcode; } ;
struct TYPE_17__ {TYPE_5__* Object; int Type; } ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_DEVICE ;





 int ACPI_TYPE_THERMAL ;
 int AE_AML_INTERNAL ;
 int AE_AML_UNINITIALIZED_ELEMENT ;
 int AE_INFO ;
 int AE_OK ;
 int AML_COPY_OBJECT_OP ;
 int AML_INT_METHODCALL_OP ;
 int AcpiDsGetBufferArguments (TYPE_5__*) ;
 int AcpiDsGetPackageArguments (TYPE_5__*) ;
 int AcpiDsMethodDataGetValue (int ,int ,TYPE_4__*,TYPE_5__**) ;
 int AcpiExReadDataFromField (TYPE_4__*,TYPE_5__*,TYPE_5__**) ;
 int AcpiUtAddReference (TYPE_5__*) ;
 int AcpiUtRemoveReference (TYPE_5__*) ;
 int ExResolveObjectToValue ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiExResolveObjectToValue (
    ACPI_OPERAND_OBJECT **StackPtr,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_OPERAND_OBJECT *StackDesc;
    ACPI_OPERAND_OBJECT *ObjDesc = ((void*)0);
    UINT8 RefType;


    ACPI_FUNCTION_TRACE (ExResolveObjectToValue);


    StackDesc = *StackPtr;



    switch (StackDesc->Common.Type)
    {
    case 130:

        RefType = StackDesc->Reference.Class;

        switch (RefType)
        {
        case 138:
        case 141:




            Status = AcpiDsMethodDataGetValue (RefType,
                StackDesc->Reference.Value, WalkState, &ObjDesc);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }

            ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "[Arg/Local %X] ValueObj is %p\n",
                StackDesc->Reference.Value, ObjDesc));





            AcpiUtRemoveReference (StackDesc);
            *StackPtr = ObjDesc;
            break;

        case 139:

            switch (StackDesc->Reference.TargetType)
            {
            case 133:


                break;

            case 128:



                if ((WalkState->Opcode == AML_INT_METHODCALL_OP) ||
                    (WalkState->Opcode == AML_COPY_OBJECT_OP))
                {
                    break;
                }



                ObjDesc = *StackDesc->Reference.Where;
                if (ObjDesc)
                {





                    AcpiUtAddReference (ObjDesc);
                    *StackPtr = ObjDesc;
                }
                else
                {




                    ACPI_ERROR ((AE_INFO,
                        "Attempt to dereference an Index to "
                        "NULL package element Idx=%p",
                        StackDesc));
                    Status = AE_AML_UNINITIALIZED_ELEMENT;
                }
                break;

            default:



                ACPI_ERROR ((AE_INFO,
                    "Unknown TargetType 0x%X in Index/Reference object %p",
                    StackDesc->Reference.TargetType, StackDesc));
                Status = AE_AML_INTERNAL;
                break;
            }
            break;

        case 136:
        case 140:
        case 135:



            break;

        case 137:



            if ((StackDesc->Reference.Node->Type == ACPI_TYPE_DEVICE) ||
                (StackDesc->Reference.Node->Type == ACPI_TYPE_THERMAL))
            {


                *StackPtr = (void *) StackDesc->Reference.Node;
            }
            else
            {


                *StackPtr = (StackDesc->Reference.Node)->Object;
                AcpiUtAddReference (*StackPtr);
            }

            AcpiUtRemoveReference (StackDesc);
            break;

        default:

            ACPI_ERROR ((AE_INFO,
                "Unknown Reference type 0x%X in %p",
                RefType, StackDesc));
            Status = AE_AML_INTERNAL;
            break;
        }
        break;

    case 134:

        Status = AcpiDsGetBufferArguments (StackDesc);
        break;

    case 128:

        Status = AcpiDsGetPackageArguments (StackDesc);
        break;

    case 133:
    case 129:
    case 132:
    case 131:

        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "FieldRead SourceDesc=%p Type=%X\n",
            StackDesc, StackDesc->Common.Type));

        Status = AcpiExReadDataFromField (WalkState, StackDesc, &ObjDesc);



        AcpiUtRemoveReference (*StackPtr);
        *StackPtr = (void *) ObjDesc;
        break;

    default:

        break;
    }

    return_ACPI_STATUS (Status);
}
