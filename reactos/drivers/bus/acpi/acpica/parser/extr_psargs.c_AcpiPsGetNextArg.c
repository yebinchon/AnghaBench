
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_23__ {int Size; TYPE_6__* Arg; } ;
struct TYPE_24__ {TYPE_2__ Value; int AmlOpcode; TYPE_6__* Next; } ;
struct TYPE_22__ {int Data; } ;
struct TYPE_27__ {TYPE_3__ Common; TYPE_1__ Named; } ;
struct TYPE_26__ {int PkgEnd; int Aml; } ;
struct TYPE_25__ {int ArgCount; } ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_STATE ;
typedef TYPE_6__ ACPI_PARSE_OBJECT ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_5__*) ;
 int ACPI_IS_PARENT_PREFIX (int) ;
 int ACPI_IS_ROOT_PREFIX (int) ;
 int ACPI_NOT_METHOD_CALL ;
 int ACPI_POSSIBLE_METHOD_CALL ;
 int ACPI_PTR_DIFF (int ,int ) ;
 int ACPI_VAR_ARGS ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AML_BYTE_OP ;
 int AML_INT_BYTELIST_OP ;
 int AML_INT_METHODCALL_OP ;
 int AML_INT_NAMEPATH_OP ;
 TYPE_6__* AcpiPsAllocOp (int ,int ) ;
 int AcpiPsFreeOp (TYPE_6__*) ;
 TYPE_6__* AcpiPsGetNextField (TYPE_5__*) ;
 int AcpiPsGetNextNamepath (TYPE_4__*,TYPE_5__*,TYPE_6__*,int ) ;
 int AcpiPsGetNextPackageEnd (TYPE_5__*) ;
 int AcpiPsGetNextSimpleArg (TYPE_5__*,int,TYPE_6__*) ;
 int AcpiPsIsLeadingChar (int) ;
 int AcpiPsPeekOpcode (TYPE_5__*) ;
 int AcpiUtGetArgumentTypeName (int) ;
 int PsGetNextArg ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiPsGetNextArg (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_STATE *ParserState,
    UINT32 ArgType,
    ACPI_PARSE_OBJECT **ReturnArg)
{
    ACPI_PARSE_OBJECT *Arg = ((void*)0);
    ACPI_PARSE_OBJECT *Prev = ((void*)0);
    ACPI_PARSE_OBJECT *Field;
    UINT32 Subop;
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE_PTR (PsGetNextArg, ParserState);


    ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
        "Expected argument type ARGP: %s (%2.2X)\n",
        AcpiUtGetArgumentTypeName (ArgType), ArgType));

    switch (ArgType)
    {
    case 145:
    case 128:
    case 140:
    case 143:
    case 138:
    case 137:



        Arg = AcpiPsAllocOp (AML_BYTE_OP, ParserState->Aml);
        if (!Arg)
        {
            return_ACPI_STATUS (AE_NO_MEMORY);
        }

        AcpiPsGetNextSimpleArg (ParserState, ArgType, Arg);
        break;

    case 134:



        ParserState->PkgEnd = AcpiPsGetNextPackageEnd (ParserState);
        break;

    case 139:

        if (ParserState->Aml < ParserState->PkgEnd)
        {


            while (ParserState->Aml < ParserState->PkgEnd)
            {
                Field = AcpiPsGetNextField (ParserState);
                if (!Field)
                {
                    return_ACPI_STATUS (AE_NO_MEMORY);
                }

                if (Prev)
                {
                    Prev->Common.Next = Field;
                }
                else
                {
                    Arg = Field;
                }
                Prev = Field;
            }



            ParserState->Aml = ParserState->PkgEnd;
        }
        break;

    case 144:

        if (ParserState->Aml < ParserState->PkgEnd)
        {


            Arg = AcpiPsAllocOp (AML_INT_BYTELIST_OP,
                ParserState->Aml);
            if (!Arg)
            {
                return_ACPI_STATUS (AE_NO_MEMORY);
            }



            Arg->Common.Value.Size = (UINT32)
                ACPI_PTR_DIFF (ParserState->PkgEnd, ParserState->Aml);
            Arg->Named.Data = ParserState->Aml;



            ParserState->Aml = ParserState->PkgEnd;
        }
        break;

    case 133:
    case 136:

        ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
            "**** SimpleName/NameOrRef: %s (%2.2X)\n",
            AcpiUtGetArgumentTypeName (ArgType), ArgType));

        Subop = AcpiPsPeekOpcode (ParserState);
        if (Subop == 0 ||
            AcpiPsIsLeadingChar (Subop) ||
            ACPI_IS_ROOT_PREFIX (Subop) ||
            ACPI_IS_PARENT_PREFIX (Subop))
        {


            Arg = AcpiPsAllocOp (AML_INT_NAMEPATH_OP, ParserState->Aml);
            if (!Arg)
            {
                return_ACPI_STATUS (AE_NO_MEMORY);
            }

            Status = AcpiPsGetNextNamepath (WalkState, ParserState,
                Arg, ACPI_NOT_METHOD_CALL);
        }
        else
        {


            WalkState->ArgCount = 1;
        }
        break;

    case 131:
    case 132:

        ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
            "**** Target/Supername: %s (%2.2X)\n",
            AcpiUtGetArgumentTypeName (ArgType), ArgType));

        Subop = AcpiPsPeekOpcode (ParserState);
        if (Subop == 0 ||
            AcpiPsIsLeadingChar (Subop) ||
            ACPI_IS_ROOT_PREFIX (Subop) ||
            ACPI_IS_PARENT_PREFIX (Subop))
        {


            Arg = AcpiPsAllocOp (AML_INT_NAMEPATH_OP, ParserState->Aml);
            if (!Arg)
            {
                return_ACPI_STATUS (AE_NO_MEMORY);
            }

            Status = AcpiPsGetNextNamepath (WalkState, ParserState,
                Arg, ACPI_POSSIBLE_METHOD_CALL);

            if (Arg->Common.AmlOpcode == AML_INT_METHODCALL_OP)
            {


                AcpiPsFreeOp (Arg->Common.Value.Arg);
                AcpiPsFreeOp (Arg);
                Arg = ((void*)0);
                WalkState->ArgCount = 1;
            }
        }
        else
        {


            WalkState->ArgCount = 1;
        }
        break;

    case 142:
    case 130:

        ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
            "**** TermArg/DataObj: %s (%2.2X)\n",
            AcpiUtGetArgumentTypeName (ArgType), ArgType));



        WalkState->ArgCount = 1;
        break;

    case 141:
    case 129:
    case 135:

        if (ParserState->Aml < ParserState->PkgEnd)
        {


            WalkState->ArgCount = ACPI_VAR_ARGS;
        }
        break;

    default:

        ACPI_ERROR ((AE_INFO, "Invalid ArgType: 0x%X", ArgType));
        Status = AE_AML_OPERAND_TYPE;
        break;
    }

    *ReturnArg = Arg;
    return_ACPI_STATUS (Status);
}
