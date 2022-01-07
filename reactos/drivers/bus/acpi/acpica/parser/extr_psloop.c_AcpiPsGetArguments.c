
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int UINT8 ;
typedef void* UINT32 ;
struct TYPE_31__ {int * PkgEnd; int * Aml; } ;
struct TYPE_26__ {void* Length; int * Data; } ;
struct TYPE_25__ {int AmlOpcode; TYPE_2__* Parent; int AmlOpName; } ;
struct TYPE_30__ {TYPE_4__ Named; TYPE_3__ Common; } ;
struct TYPE_29__ {TYPE_9__ ParserState; TYPE_6__* ControlState; int ArgCount; int PassNumber; int ArgTypes; int * Aml; } ;
struct TYPE_27__ {int * PackageEnd; } ;
struct TYPE_28__ {TYPE_5__ Control; } ;
struct TYPE_23__ {int AmlOpcode; } ;
struct TYPE_24__ {TYPE_1__ Common; } ;
typedef TYPE_7__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_8__ ACPI_PARSE_OBJECT ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_7__*) ;
 int ACPI_IMODE_LOAD_PASS2 ;
 int ACPI_POSSIBLE_METHOD_CALL ;
 int AE_OK ;





 int AML_NAME_OP ;






 int ASL_CV_CAPTURE_COMMENTS (TYPE_7__*) ;
 int AcpiPsAppendArg (TYPE_8__*,TYPE_8__*) ;
 int AcpiPsGetNextArg (TYPE_7__*,TYPE_9__*,int ,TYPE_8__**) ;
 int AcpiPsGetNextNamepath (TYPE_7__*,TYPE_9__*,TYPE_8__*,int ) ;
 int AcpiPsGetNextSimpleArg (TYPE_9__*,int ,TYPE_8__*) ;
 int GET_CURRENT_ARG_TYPE (int ) ;
 int INCREMENT_ARG_LIST (int ) ;
 int PsGetArguments ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiPsGetArguments (
    ACPI_WALK_STATE *WalkState,
    UINT8 *AmlOpStart,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_PARSE_OBJECT *Arg = ((void*)0);


    ACPI_FUNCTION_TRACE_PTR (PsGetArguments, WalkState);


    ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
        "Get arguments for opcode [%s]\n", Op->Common.AmlOpName));

    switch (Op->Common.AmlOpcode)
    {
    case 137:
    case 128:
    case 136:
    case 132:
    case 131:



        AcpiPsGetNextSimpleArg (&(WalkState->ParserState),
            GET_CURRENT_ARG_TYPE (WalkState->ArgTypes), Op);
        break;

    case 135:

        Status = AcpiPsGetNextNamepath (WalkState,
            &(WalkState->ParserState), Op, ACPI_POSSIBLE_METHOD_CALL);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }

        WalkState->ArgTypes = 0;
        break;

    default:



        while (GET_CURRENT_ARG_TYPE (WalkState->ArgTypes) &&
            !WalkState->ArgCount)
        {
            WalkState->Aml = WalkState->ParserState.Aml;

            switch (Op->Common.AmlOpcode)
            {
            case 134:
            case 138:
            case 133:
            case 130:
            case 129:

                break;

            default:

                ASL_CV_CAPTURE_COMMENTS (WalkState);
                break;
            }

            Status = AcpiPsGetNextArg (WalkState, &(WalkState->ParserState),
                GET_CURRENT_ARG_TYPE (WalkState->ArgTypes), &Arg);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }

            if (Arg)
            {
                AcpiPsAppendArg (Op, Arg);
            }

            INCREMENT_ARG_LIST (WalkState->ArgTypes);
        }

        ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
            "Final argument count: %8.8X pass %u\n",
            WalkState->ArgCount, WalkState->PassNumber));



        switch (Op->Common.AmlOpcode)
        {
        case 134:






            Op->Named.Data = WalkState->ParserState.Aml;
            Op->Named.Length = (UINT32)
                (WalkState->ParserState.PkgEnd - WalkState->ParserState.Aml);



            WalkState->ParserState.Aml = WalkState->ParserState.PkgEnd;
            WalkState->ArgCount = 0;
            break;

        case 138:
        case 133:
        case 130:

            if ((Op->Common.Parent) &&
                (Op->Common.Parent->Common.AmlOpcode == AML_NAME_OP) &&
                (WalkState->PassNumber <= ACPI_IMODE_LOAD_PASS2))
            {
                ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
                    "Setup Package/Buffer: Pass %u, AML Ptr: %p\n",
                    WalkState->PassNumber, AmlOpStart));





                Op->Named.Data = AmlOpStart;
                Op->Named.Length = (UINT32)
                    (WalkState->ParserState.PkgEnd - AmlOpStart);



                WalkState->ParserState.Aml = WalkState->ParserState.PkgEnd;
                WalkState->ArgCount = 0;
            }
            break;

        case 129:

            if (WalkState->ControlState)
            {
                WalkState->ControlState->Control.PackageEnd =
                    WalkState->ParserState.PkgEnd;
            }
            break;

        default:



            break;
        }

        break;
    }

    return_ACPI_STATUS (AE_OK);
}
