
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {int * Aml; } ;
typedef TYPE_1__ ACPI_PARSE_STATE ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiPsGetNextPackageLength (TYPE_1__*) ;
 int PsGetNextPackageEnd ;
 int return_PTR (int *) ;

UINT8 *
AcpiPsGetNextPackageEnd (
    ACPI_PARSE_STATE *ParserState)
{
    UINT8 *Start = ParserState->Aml;
    UINT32 PackageLength;


    ACPI_FUNCTION_TRACE (PsGetNextPackageEnd);




    PackageLength = AcpiPsGetNextPackageLength (ParserState);

    return_PTR (Start + PackageLength);
}
