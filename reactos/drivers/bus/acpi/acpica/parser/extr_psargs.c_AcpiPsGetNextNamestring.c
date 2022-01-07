
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {int* Aml; } ;
typedef TYPE_1__ ACPI_PARSE_STATE ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_IS_PARENT_PREFIX (int) ;
 scalar_t__ ACPI_IS_ROOT_PREFIX (int) ;
 int ACPI_NAMESEG_SIZE ;


 int PsGetNextNamestring ;
 int return_PTR (char*) ;

char *
AcpiPsGetNextNamestring (
    ACPI_PARSE_STATE *ParserState)
{
    UINT8 *Start = ParserState->Aml;
    UINT8 *End = ParserState->Aml;


    ACPI_FUNCTION_TRACE (PsGetNextNamestring);




    while (ACPI_IS_ROOT_PREFIX (*End) ||
           ACPI_IS_PARENT_PREFIX (*End))
    {
        End++;
    }



    switch (*End)
    {
    case 0:



        if (End == Start)
        {
            Start = ((void*)0);
        }
        End++;
        break;

    case 129:



        End += 1 + (2 * ACPI_NAMESEG_SIZE);
        break;

    case 128:



        End += 2 + (*(End + 1) * ACPI_NAMESEG_SIZE);
        break;

    default:



        End += ACPI_NAMESEG_SIZE;
        break;
    }

    ParserState->Aml = End;
    return_PTR ((char *) Start);
}
