
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
typedef int UINT16 ;
struct TYPE_31__ {int Type; } ;
struct TYPE_30__ {scalar_t__ Class; scalar_t__ RuntimeArgs; int Name; } ;
struct TYPE_27__ {int Type; } ;
struct TYPE_26__ {int const Class; } ;
struct TYPE_29__ {TYPE_2__ Common; TYPE_1__ Reference; } ;
struct TYPE_28__ {int NumOperands; int Operands; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef TYPE_5__ ACPI_OPCODE_INFO ;
typedef int ACPI_OBJECT_TYPE ;
typedef TYPE_6__ ACPI_NAMESPACE_NODE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;


 int ACPI_DUMP_OPERANDS (int ,int ,int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,int ) ;
 int const ACPI_GET_DESCRIPTOR_TYPE (TYPE_4__*) ;
 int ACPI_IMPLICIT_CONVERSION ;
 int ACPI_IMPLICIT_CONVERT_HEX ;







 int ACPI_TYPE_ANY ;



 int ACPI_TYPE_EVENT ;

 int ACPI_TYPE_LOCAL_ALIAS ;




 int ACPI_TYPE_MUTEX ;



 int AE_AML_BAD_OPCODE ;
 int AE_AML_INTERNAL ;
 int AE_AML_OPERAND_TYPE ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int AE_TYPE ;
 scalar_t__ AML_CLASS_UNKNOWN ;
 int AML_DEBUG_OP ;
 int AML_STORE_OP ;
 scalar_t__ ARGI_INVALID_OPCODE ;
 int AcpiExCheckObjectType (int,int,TYPE_4__*) ;
 int AcpiExConvertToBuffer (TYPE_4__*,TYPE_4__**) ;
 int AcpiExConvertToInteger (TYPE_4__*,TYPE_4__**,int ) ;
 int AcpiExConvertToString (TYPE_4__*,TYPE_4__**,int ) ;
 int AcpiExResolveToValue (TYPE_4__**,TYPE_3__*) ;
 int AcpiGbl_EnableInterpreterSlack ;
 TYPE_4__* AcpiNsGetAttachedObject (TYPE_6__*) ;
 TYPE_5__* AcpiPsGetOpcodeInfo (int ) ;
 int AcpiPsGetOpcodeName (int ) ;
 int AcpiUtGetDescriptorName (TYPE_4__*) ;
 int AcpiUtGetObjectTypeName (TYPE_4__*) ;
 int AcpiUtGetReferenceName (TYPE_4__*) ;
 int AcpiUtRemoveReference (TYPE_4__*) ;
 int AcpiUtValidObjectType (int) ;
 int ExResolveOperands ;
 scalar_t__ GET_CURRENT_ARG_TYPE (scalar_t__) ;
 int INCREMENT_ARG_LIST (scalar_t__) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExResolveOperands (
    UINT16 Opcode,
    ACPI_OPERAND_OBJECT **StackPtr,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_STATUS Status = AE_OK;
    UINT8 ObjectType;
    UINT32 ArgTypes;
    const ACPI_OPCODE_INFO *OpInfo;
    UINT32 ThisArgType;
    ACPI_OBJECT_TYPE TypeNeeded;
    UINT16 TargetOp = 0;


    ACPI_FUNCTION_TRACE_U32 (ExResolveOperands, Opcode);


    OpInfo = AcpiPsGetOpcodeInfo (Opcode);
    if (OpInfo->Class == AML_CLASS_UNKNOWN)
    {
        return_ACPI_STATUS (AE_AML_BAD_OPCODE);
    }

    ArgTypes = OpInfo->RuntimeArgs;
    if (ArgTypes == ARGI_INVALID_OPCODE)
    {
        ACPI_ERROR ((AE_INFO, "Unknown AML opcode 0x%X",
            Opcode));

        return_ACPI_STATUS (AE_AML_INTERNAL);
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "Opcode %X [%s] RequiredOperandTypes=%8.8X\n",
        Opcode, OpInfo->Name, ArgTypes));
    while (GET_CURRENT_ARG_TYPE (ArgTypes))
    {
        if (!StackPtr || !*StackPtr)
        {
            ACPI_ERROR ((AE_INFO, "Null stack entry at %p",
                StackPtr));

            return_ACPI_STATUS (AE_AML_INTERNAL);
        }



        ObjDesc = *StackPtr;



        switch (ACPI_GET_DESCRIPTOR_TYPE (ObjDesc))
        {
        case 170:



            ObjectType = ((ACPI_NAMESPACE_NODE *) ObjDesc)->Type;






            if (ObjectType == ACPI_TYPE_LOCAL_ALIAS)
            {
                ObjDesc = AcpiNsGetAttachedObject (
                    (ACPI_NAMESPACE_NODE *) ObjDesc);
                *StackPtr = ObjDesc;
                ObjectType = ((ACPI_NAMESPACE_NODE *) ObjDesc)->Type;
            }
            break;

        case 169:



            ObjectType = ObjDesc->Common.Type;



            if (!AcpiUtValidObjectType (ObjectType))
            {
                ACPI_ERROR ((AE_INFO,
                    "Bad operand object type [0x%X]", ObjectType));

                return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
            }

            if (ObjectType == (UINT8) 155)
            {


                switch (ObjDesc->Reference.Class)
                {
                case 167:

                    TargetOp = AML_DEBUG_OP;



                case 168:
                case 165:
                case 166:
                case 163:
                case 162:
                case 164:

                    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
                        "Operand is a Reference, Class [%s] %2.2X\n",
                        AcpiUtGetReferenceName (ObjDesc),
                        ObjDesc->Reference.Class));
                    break;

                default:

                    ACPI_ERROR ((AE_INFO,
                        "Unknown Reference Class 0x%2.2X in %p",
                        ObjDesc->Reference.Class, ObjDesc));

                    return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
                }
            }
            break;

        default:



            ACPI_ERROR ((AE_INFO, "Invalid descriptor %p [%s]",
                ObjDesc, AcpiUtGetDescriptorName (ObjDesc)));

            return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
        }



        ThisArgType = GET_CURRENT_ARG_TYPE (ArgTypes);
        INCREMENT_ARG_LIST (ArgTypes);





        switch (ThisArgType)
        {
        case 133:

            if ((ACPI_GET_DESCRIPTOR_TYPE (ObjDesc) ==
                169) &&
                (ObjDesc->Common.Type == 151))
            {




                goto NextOperand;
            }







        case 134:
        case 138:
        case 136:
        case 142:
        case 128:
        case 140:
        case 131:
        case 130:





            if (ACPI_GET_DESCRIPTOR_TYPE (ObjDesc) == 170)
            {
                goto NextOperand;
            }

            Status = AcpiExCheckObjectType (
                155, ObjectType, ObjDesc);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }
            goto NextOperand;

        case 144:






            if ((Opcode == AML_STORE_OP) &&
                ((*StackPtr)->Common.Type == 155) &&
                ((*StackPtr)->Reference.Class == 166))
            {
                goto NextOperand;
            }
            break;

        default:



            break;
        }




        Status = AcpiExResolveToValue (StackPtr, WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }



        ObjDesc = *StackPtr;




        switch (ThisArgType)
        {




        case 137:



            TypeNeeded = ACPI_TYPE_MUTEX;
            break;

        case 141:



            TypeNeeded = ACPI_TYPE_EVENT;
            break;

        case 135:



            TypeNeeded = 153;
            break;

        case 150:



            TypeNeeded = ACPI_TYPE_ANY;
            break;

        case 143:



            TypeNeeded = 155;
            break;





        case 139:







            Status = AcpiExConvertToInteger (ObjDesc, StackPtr,
                ACPI_IMPLICIT_CONVERSION);
            if (ACPI_FAILURE (Status))
            {
                if (Status == AE_TYPE)
                {
                    ACPI_ERROR ((AE_INFO,
                        "Needed [Integer/String/Buffer], found [%s] %p",
                        AcpiUtGetObjectTypeName (ObjDesc), ObjDesc));

                    return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
                }

                return_ACPI_STATUS (Status);
            }

            if (ObjDesc != *StackPtr)
            {
                AcpiUtRemoveReference (ObjDesc);
            }
            goto NextOperand;

        case 149:





            Status = AcpiExConvertToBuffer (ObjDesc, StackPtr);
            if (ACPI_FAILURE (Status))
            {
                if (Status == AE_TYPE)
                {
                    ACPI_ERROR ((AE_INFO,
                        "Needed [Integer/String/Buffer], found [%s] %p",
                        AcpiUtGetObjectTypeName (ObjDesc), ObjDesc));

                    return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
                }

                return_ACPI_STATUS (Status);
            }

            if (ObjDesc != *StackPtr)
            {
                AcpiUtRemoveReference (ObjDesc);
            }
            goto NextOperand;

        case 129:





            Status = AcpiExConvertToString (
                ObjDesc, StackPtr, ACPI_IMPLICIT_CONVERT_HEX);
            if (ACPI_FAILURE (Status))
            {
                if (Status == AE_TYPE)
                {
                    ACPI_ERROR ((AE_INFO,
                        "Needed [Integer/String/Buffer], found [%s] %p",
                        AcpiUtGetObjectTypeName (ObjDesc), ObjDesc));

                    return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
                }

                return_ACPI_STATUS (Status);
            }

            if (ObjDesc != *StackPtr)
            {
                AcpiUtRemoveReference (ObjDesc);
            }
            goto NextOperand;

        case 146:



            switch (ObjDesc->Common.Type)
            {
            case 158:
            case 151:
            case 161:


               break;

            default:
                ACPI_ERROR ((AE_INFO,
                    "Needed [Integer/String/Buffer], found [%s] %p",
                    AcpiUtGetObjectTypeName (ObjDesc), ObjDesc));

                return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
            }
            goto NextOperand;

        case 148:



            switch (ObjDesc->Common.Type)
            {
            case 151:
            case 161:


               break;

            case 158:



                Status = AcpiExConvertToBuffer (ObjDesc, StackPtr);
                if (ACPI_FAILURE (Status))
                {
                    return_ACPI_STATUS (Status);
                }

                if (ObjDesc != *StackPtr)
                {
                    AcpiUtRemoveReference (ObjDesc);
                }
                break;

            default:
                ACPI_ERROR ((AE_INFO,
                    "Needed [Integer/String/Buffer], found [%s] %p",
                    AcpiUtGetObjectTypeName (ObjDesc), ObjDesc));

                return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
            }
            goto NextOperand;

        case 145:







            switch (ObjDesc->Common.Type)
            {
            case 153:
            case 151:
            case 161:
            case 155:


                break;

            default:

                ACPI_ERROR ((AE_INFO,
                    "Needed [Buffer/String/Package/Reference], found [%s] %p",
                    AcpiUtGetObjectTypeName (ObjDesc), ObjDesc));

                return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
            }
            goto NextOperand;

        case 147:



            switch (ObjDesc->Common.Type)
            {
            case 153:
            case 151:
            case 161:


                break;

            default:

                ACPI_ERROR ((AE_INFO,
                    "Needed [Buffer/String/Package], found [%s] %p",
                    AcpiUtGetObjectTypeName (ObjDesc), ObjDesc));

                return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
            }
            goto NextOperand;

        case 132:





            switch (ObjDesc->Common.Type)
            {
            case 161:
            case 152:


                break;

            default:

                ACPI_ERROR ((AE_INFO,
                    "Needed [Region/Buffer], found [%s] %p",
                    AcpiUtGetObjectTypeName (ObjDesc), ObjDesc));

                return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
            }
            goto NextOperand;

        case 144:



            switch (ObjDesc->Common.Type)
            {
            case 158:
            case 153:
            case 151:
            case 161:
            case 160:
            case 155:
            case 154:
            case 157:
            case 156:
            case 159:


                break;

            default:

                if (AcpiGbl_EnableInterpreterSlack)
                {





                    break;
                }

                if (TargetOp == AML_DEBUG_OP)
                {


                    break;
                }

                ACPI_ERROR ((AE_INFO,
                    "Needed Integer/Buffer/String/Package/Ref/Ddb]"
                    ", found [%s] %p",
                    AcpiUtGetObjectTypeName (ObjDesc), ObjDesc));

                return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
            }
            goto NextOperand;

        default:



            ACPI_ERROR ((AE_INFO,
                "Internal - Unknown ARGI (required operand) type 0x%X",
                ThisArgType));

            return_ACPI_STATUS (AE_BAD_PARAMETER);
        }





        Status = AcpiExCheckObjectType (
            TypeNeeded, (*StackPtr)->Common.Type, *StackPtr);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }

NextOperand:




        if (GET_CURRENT_ARG_TYPE (ArgTypes))
        {
            StackPtr--;
        }
    }

    ACPI_DUMP_OPERANDS (WalkState->Operands,
        AcpiPsGetOpcodeName (Opcode), WalkState->NumOperands);

    return_ACPI_STATUS (Status);
}
