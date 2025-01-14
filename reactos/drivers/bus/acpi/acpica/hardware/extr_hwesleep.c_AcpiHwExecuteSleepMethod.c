
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT32 ;
struct TYPE_5__ {scalar_t__ Value; } ;
struct TYPE_7__ {TYPE_1__ Integer; int Type; } ;
struct TYPE_6__ {int Count; TYPE_3__* Pointer; } ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT_LIST ;
typedef TYPE_3__ ACPI_OBJECT ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int AE_INFO ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AcpiEvaluateObject (int *,char*,TYPE_2__*,int *) ;
 int HwExecuteSleepMethod ;
 int return_VOID ;

void
AcpiHwExecuteSleepMethod (
    char *MethodPathname,
    UINT32 IntegerArgument)
{
    ACPI_OBJECT_LIST ArgList;
    ACPI_OBJECT Arg;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (HwExecuteSleepMethod);




    ArgList.Count = 1;
    ArgList.Pointer = &Arg;
    Arg.Type = ACPI_TYPE_INTEGER;
    Arg.Integer.Value = (UINT64) IntegerArgument;

    Status = AcpiEvaluateObject (((void*)0), MethodPathname, &ArgList, ((void*)0));
    if (ACPI_FAILURE (Status) && Status != AE_NOT_FOUND)
    {
        ACPI_EXCEPTION ((AE_INFO, Status, "While executing method %s",
            MethodPathname));
    }

    return_VOID;
}
