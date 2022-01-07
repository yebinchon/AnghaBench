
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_11__ {int String; } ;
struct TYPE_12__ {TYPE_4__* Parent; TYPE_4__* Next; TYPE_2__ Value; int AmlOpcode; } ;
struct TYPE_10__ {scalar_t__ AmlOpcode; } ;
struct TYPE_13__ {TYPE_3__ Common; TYPE_1__ Named; } ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;


 int ACPI_DB_PARSE_TREES ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_4__*) ;
 scalar_t__ ACPI_IS_DEBUG_ENABLED (int ,int ) ;
 int ACPI_LV_PARSE_TREES ;
 scalar_t__ AML_INT_NAMEPATH_OP ;
 scalar_t__ AML_STRING_OP ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiPsFreeOp (TYPE_4__*) ;
 TYPE_4__* AcpiPsGetArg (TYPE_4__*,int ) ;
 int AcpiPsGetOpcodeName (int ) ;
 int PsDeleteParseTree ;
 int _COMPONENT ;
 int return_VOID ;

void
AcpiPsDeleteParseTree (
    ACPI_PARSE_OBJECT *SubtreeRoot)
{
    ACPI_PARSE_OBJECT *Op = SubtreeRoot;
    ACPI_PARSE_OBJECT *Next = ((void*)0);
    ACPI_PARSE_OBJECT *Parent = ((void*)0);
    UINT32 Level = 0;


    ACPI_FUNCTION_TRACE_PTR (PsDeleteParseTree, SubtreeRoot);

    ACPI_DEBUG_PRINT ((ACPI_DB_PARSE_TREES,
        " root %p\n", SubtreeRoot));



    while (Op)
    {
        if (Op != Parent)
        {


            if (ACPI_IS_DEBUG_ENABLED (ACPI_LV_PARSE_TREES, _COMPONENT))
            {


                AcpiOsPrintf ("        %*.s%s %p", (Level * 4), " ",
                    AcpiPsGetOpcodeName (Op->Common.AmlOpcode), Op);

                if (Op->Named.AmlOpcode == AML_INT_NAMEPATH_OP)
                {
                    AcpiOsPrintf ("    %4.4s", Op->Common.Value.String);
                }
                if (Op->Named.AmlOpcode == AML_STRING_OP)
                {
                    AcpiOsPrintf ("    %s", Op->Common.Value.String);
                }
                AcpiOsPrintf ("\n");
            }



            Next = AcpiPsGetArg (Op, 0);
            if (Next)
            {


                Op = Next;
                Level++;
                continue;
            }
        }



        Next = Op->Common.Next;
        Parent = Op->Common.Parent;

        AcpiPsFreeOp (Op);



        if (Op == SubtreeRoot)
        {
            return_VOID;
        }

        if (Next)
        {
            Op = Next;
        }
        else
        {
            Level--;
            Op = Parent;
        }
    }

    return_VOID;
}
